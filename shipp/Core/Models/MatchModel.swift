//
//  MatchModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/17/23.
//

import Foundation
import Amplify
import Combine
import SwiftUI

final class MatchModel: NSObject, ObservableObject {
    var subscription: AnyCancellable?
    var matchSubscription: AnyCancellable?
    var otherAccountSubscription: AnyCancellable?
    var otherProfileSubscription: AnyCancellable?
    
    @Published var accountID: String?
    @Published var is_1: Bool?
    
    @Published var otherAccountID: String?
    @Published var otherImage: UIImage?
    @Published var otherAccount: Account?
    @Published var otherProfile: Profile?
    @Published var otherLocation: Location?

    @Published var match: Match?
    @Published var accepted_by_curr = false
    @Published var accepted_by_other = false
    @Published var cancelled = false
    @Published var cancelled_by_curr = false
    @Published var arrived_curr: Bool?
    @Published var arrived_other: Bool?
    @Published var inMeetup = false
    @Published var matchDeadline: Date?
    @Published var meetupDeadline: Date?
    @Published var meetupLocation: Location?
    @Published var timeRemaining: Int = 0 // (900 seconds = 15 minutes)
    
    @Published var didMeet: Bool = false
    @Published var didReport: Bool = false
    @Published var matchFeedback: String = ""
    @Published var reportFeedback: String = ""
    
    var formatter = DateComponentsFormatter()
    
    override init() {
        super.init()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
    }
    
    // MARK: - Initialize model variables
    
    func reset() {
        subscription = nil
        matchSubscription = nil
        otherAccountSubscription = nil
        otherProfileSubscription = nil
        
        is_1 = nil
        
        otherAccountID = nil
        otherImage = nil
        otherAccount = nil
        otherProfile = nil
        otherLocation = nil
        
        match = nil
        accepted_by_curr = false
        accepted_by_other = false
        cancelled = false
        arrived_curr = nil
        arrived_other = nil
        inMeetup = false
        matchDeadline = nil
        meetupDeadline = nil
        meetupLocation = nil
        timeRemaining = 0
        
        didMeet = false
        didReport = false
        matchFeedback = ""
        reportFeedback = ""
    }
    
    func update(withMatch match: Match) {
        guard let accountID = self.accountID else { return }
        
        self.match = match
        let is_1 = (accountID == match.account_id_1)
        self.is_1 = is_1
        
        if is_1 {
            self.otherAccountID = match.account_id_2
        } else {
            self.otherAccountID = match.account_id_1
        }
        
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
        
        if let arrived_1 = match.arrived_1 {
            if is_1 {
                self.arrived_curr = arrived_1
            } else {
                self.arrived_other = arrived_1
            }
        }
        
        if let arrived_2 = match.arrived_2 {
            if !is_1 {
                self.arrived_curr = arrived_2
            } else {
                self.arrived_other = arrived_2
            }
        }
        
        if self.accepted_by_curr == true && self.accepted_by_other == true && self.cancelled != false {
            inMeetup = true
        }
        
        if let location = match.location {
            self.meetupLocation = location
        }
    
        if let matchDeadline = match.match_deadline {
            self.matchDeadline = matchDeadline.foundationDate
        }
        
        if let meetupDeadline = match.meetup_deadline {
            self.meetupDeadline  = meetupDeadline.foundationDate
        }
        
        print("DEBUG update(): Update match \(inMeetup) \(String(describing:matchDeadline)) \(String(describing: meetupDeadline)) \(accepted_by_curr) \(accepted_by_other)")
    }
    
    func queryMatch(_ id: String) {
        self.subscription = Amplify.Publisher.create(
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
                self.getTimeRemaining()
                self.observeMatchModel()
                print("DEBUG queryMatch(): Queried match \(match)")
                print()
            }
        }
    }
    
    func observeMatchModel() {
        guard let match = self.match else { return }
        self.matchSubscription = Amplify.Publisher.create(Amplify.DataStore.observe(Match.self))
        .sink {
            if case let .failure(error) = $0 {
                print("ERROR observeMatchModel(): Match subscription received error - \(error)")
            }
        }
        receiveValue: { changes in
            do {
                print("DEBUG observeMatchModel(): Match model was updated")
                let updatedMatch = try changes.decodeModel(as: Match.self)
                if changes.mutationType == "create" && (updatedMatch.account_id_1 == self.accountID || updatedMatch.account_id_2 == self.accountID) {
                    self.update(withMatch: updatedMatch)
                    self.getTimeRemaining()
                } else if changes.modelId == match.id {
                    let _ = try changes.decodeModel(as: Match.self)
                    self.getTimeRemaining()
                }
                DispatchQueue.main.async {
                    self.update(withMatch: updatedMatch)
                }
            } catch {
                print("ERROR observeMatchModel(): Failed to decode mutation event - \(error)")
            }
        }
    }
    
    func observeOtherAccount() {
        guard let otherID = self.otherAccountID else { return }
        self.otherAccountSubscription = Amplify.Publisher.create(Amplify.DataStore.observe(Account.self))
        .sink {
            if case let .failure(error) = $0 {
                print("ERROR observeOtherAccount(): Match's account subscription received error - \(error)")
            }
        }
        receiveValue: { changes in
            if changes.modelId == otherID {
                do {
                    print("DEBUG observeOtherAccount(): Other account model was updated")
                    let updatedAccount = try changes.decodeModel(as: Account.self)
                    DispatchQueue.main.async {
                        self.otherAccount = updatedAccount
                        self.otherLocation = updatedAccount.location
                    }
                } catch {
                    print("DEBUG observeOtherAccount() ERROR: Failed to decode mutation event - \(error)")
                }
            }
        }
     }
    
    
    // MARK: - Get properties
    func getOtherAccount() async {
        guard let otherID = self.otherAccountID else { return }
        do {
            let accountResult = try await Amplify.DataStore.query(Account.self, byId: otherID)
            guard let account = accountResult else { return }
            DispatchQueue.main.async {
                self.otherAccount = account
                self.otherLocation = account.location
                self.observeOtherAccount()
            }
            let profileResult = try await Amplify.DataStore.query(Profile.self, byId: account.accountProfileId!)
            guard let profile = profileResult else { return }
            DispatchQueue.main.async {
                self.otherProfile = profile
                print("DEBUG getOtherAccount(): Got account \(account) and profile \(profile)")
            }
            
        } catch let error as DataStoreError {
            print("DEBUG getOtherAccount(): Failed to get profile for Account \(String(describing: self.otherAccount)): ", error)
        } catch {
            print("ERROR getOtherAccount(): ", error)
        }
    }
    
    func getTimeRemaining() {
        var deadline = Date()
        
        if inMeetup && self.meetupDeadline != nil {
            deadline = self.meetupDeadline!
        } else if !inMeetup && self.matchDeadline != nil{
            deadline = self.matchDeadline!
        } else { return }
        
        DispatchQueue.main.async {
            self.timeRemaining = Int(deadline.timeIntervalSinceNow)
        }
    }
    
    func getTimeRemainingString(_ time: Int) -> String {
        return formatter.string(from: TimeInterval(time))!
    }
    
    // MARK: - Set properties
    func setAccepted(_ didAccept: Bool) async {
        guard var match = self.match else { return }
        guard let is_1 = self.is_1 else { return }
        if is_1 {
            match.accepted_by_1 = didAccept
        } else {
            match.accepted_by_2 = didAccept
        }
        
        do {
            let updatedMatch = try await Amplify.DataStore.save(match)
            print("DEBUG setAccepted(): Did accept the match is \(didAccept) \(updatedMatch) \(String(describing: self.match))")
            DispatchQueue.main.async {
                self.update(withMatch: updatedMatch)
                self.accepted_by_curr = didAccept
            }
        } catch let error as DataStoreError {
            print("ERROR setAccepted(): Failed to accept match \(error)")
        } catch {
            print("ERROR setAccepted(): \(error)")
        }
    }
    
    func setArrived(_ didArrive: Bool) async {
        print("DEBUG setArrived(): Did arrive at match \(didArrive) \(String(describing: match)) \(String(describing: is_1))")
        guard var match = self.match else { return }
        guard let is_1 = self.is_1 else { return }
        if is_1 {
            match.arrived_1 = didArrive
        } else {
            match.arrived_2 = didArrive
        }
        do {
            let updatedMatch = try await Amplify.DataStore.save(match)
            print("DEBUG setArrived(): Arrived at meetup \(String(describing: accountID))")
            DispatchQueue.main.async {
                self.update(withMatch: updatedMatch)
                self.arrived_curr = didArrive
            }
        } catch let error as DataStoreError {
            print("ERROR setArrived(): Failed to set arrival at meetup \(error)")
        } catch {
            print("ERROR setArrived(): \(error)")
        }
    }
    
    func submitFeedback() async {
        guard var match = self.match else { return }
        match.met = self.didMeet
        guard let is_1 = self.is_1 else { return }
        if is_1 {
            match.feedback_1 = matchFeedback
        } else {
            match.feedback_2 = matchFeedback
        }
        do {
            let updatedMatch = try await Amplify.DataStore.save(match)
            print("DEBUG submitFeedback(): Cancelled match \(updatedMatch.id)")
            
            //TODO: Create new Report instance
            
            DispatchQueue.main.async {
                self.update(withMatch: updatedMatch)
            }
            
            guard var recentCurrAccount = try await Amplify.DataStore.query(Account.self, byId: self.accountID!) else { return }
            recentCurrAccount.current_match = nil
            recentCurrAccount.is_discoverable = true
            try await Amplify.DataStore.save(recentCurrAccount)
            
            guard var recentOtherAccount = try await Amplify.DataStore.query(Account.self, byId: self.otherAccountID!)  else { return }
            recentOtherAccount.current_match = nil
            recentOtherAccount.is_discoverable = true
            try await Amplify.DataStore.save(recentOtherAccount)
            
        } catch let error as DataStoreError {
            print("ERROR submitFeedback(): Failed to cancel match \(error)")
        } catch {
            print("ERROR submitFeedback(): \(error)")
        }
    }
    
    func setCancelled() async {
        guard var match = self.match else { return }
        match.cancelled = true
        match.cancelled_id = self.accountID
        do {
            let updatedMatch = try await Amplify.DataStore.save(match)
            print("DEBUG setCancelled(): Cancelled match \(updatedMatch.id)")
            
            DispatchQueue.main.async {
                self.update(withMatch: updatedMatch)
            }
            
            guard var recentCurrAccount = try await Amplify.DataStore.query(Account.self, byId: self.accountID!) else { return }
            recentCurrAccount.current_match = nil
            recentCurrAccount.is_discoverable = true
            try await Amplify.DataStore.save(recentCurrAccount)
            
            guard var recentOtherAccount = try await Amplify.DataStore.query(Account.self, byId: self.otherAccountID!)  else { return }
            recentOtherAccount.current_match = nil
            recentOtherAccount.is_discoverable = true
            try await Amplify.DataStore.save(recentOtherAccount)
            
        } catch let error as DataStoreError {
            print("ERROR setCancelled(): Failed to cancel match \(error)")
        } catch {
            print("ERROR setCancelled(): \(error)")
        }
    }
    
    func setMeetupDeadline() async {
        guard var match = self.match else { return }
        var dateComponent = DateComponents()
        dateComponent.minute = 15
        let deadline = Calendar.current.date(byAdding: dateComponent, to: Date())!
        match.meetup_deadline = Temporal.DateTime(deadline)
        do {
            let updatedMatch = try await Amplify.DataStore.save(match)
            print("DEBUG setMeetupDeadline(): Set match meetup deadline \(updatedMatch) \(String(describing: self.match))")
            DispatchQueue.main.async {
                self.update(withMatch: updatedMatch)
                self.meetupDeadline = deadline
                self.inMeetup = true
            }
        } catch let error as DataStoreError {
            print("ERROR setMeetupDeadline(): Failed to set meetup deadline \(error)")
        } catch {
            print("ERROR setMeetupDeadline(): \(error)")
        }
    }
    
}
