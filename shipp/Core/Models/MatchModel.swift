//
//  MatchModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/17/23.
//

import Foundation
import Amplify

final class MatchModel: NSObject, ObservableObject {
    @Published var match: Match?
    @Published var accountID: String?
    @Published var is_1: Bool?
    @Published var accepted_by_curr = false
    @Published var accepted_by_other = false
    @Published var cancelled = false
    @Published var cancelled_by_curr = false
    @Published var matchDeadline: Date?
    @Published var meetupLocation: Location?
    @Published var timeRemaining: Int = 900 // (900 seconds = 15 minutes)
    
    // MARK: - Initialize model variables
    func update(withMatch match: Match) {
        guard let accountID = self.accountID else { return }
        
        self.match = match
        
        let is_1 = (accountID == match.account_id_1)
        
        if let cancelled = match.cancelled, let cancelled_id = match.cancelled_id {
            self.cancelled = cancelled
            self.cancelled_by_curr = (accountID == cancelled_id)
        }
        
        if let location = match.location { self.meetupLocation = location }
        
        if let accepted_by_1 = match.accepted_by_1 {
            if is_1 {
                self.accepted_by_curr = accepted_by_1
            } else {
                self.accepted_by_other = accepted_by_1
            }
        }
        
        if let accepted_by_2 = match.accepted_by_2 {
            if !is_1 {
                self.accepted_by_curr = accepted_by_2
            } else {
                self.accepted_by_other = accepted_by_2
            }
        }
    
        if let deadline = match.match_deadline {
            let dateFormatter = DateFormatter()
            let currentDate = Date()
            self.matchDeadline =  dateFormatter.date(from: deadline.iso8601String)
        }
        
        if let timeRemaining = updateTimeRemaining() {
            self.timeRemaining = timeRemaining
        }
        
    }
    
    func observe(_ id: String) {
         Amplify.Publisher.create(
             Amplify.DataStore.observeQuery(
                 for: Match.self,
                 where: Match.keys.id == id
             )
         )
         .sink { completion in
             print("Completion event: \(completion)")
         } receiveValue: { snapshot in
             guard let match = snapshot.items.first else { return }
             DispatchQueue.main.async {
                 self.update(withMatch: match)
                 print()
                 print("DEBUG: Observing match \(match)")
                 print()
             }
         }
     }
    
    
    // MARK: - Get properties
    func updateTimeRemaining() -> Int? {
        guard let deadline = self.matchDeadline else { return nil }
        let differenceInSeconds = Int(deadline.timeIntervalSinceNow)
        self.timeRemaining = differenceInSeconds
        print("DEBUG: There are \(differenceInSeconds) seconds left until \(deadline)")
        return differenceInSeconds
    }
    
    
    // MARK: - Set properties
    func setAccepted(didAccept: Bool) {
        self.accepted_by_curr = didAccept
        if self.accepted_by_curr {
            //TODO:
        }
        
    }
    
}
