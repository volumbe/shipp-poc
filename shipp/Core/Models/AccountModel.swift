//
//  AccountModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/13/23.
//

import SwiftUI
import Amplify
import Foundation
import Combine
import CoreLocation

final class AccountModel: NSObject, ObservableObject {
    @Published var account: Account?
    @Published var image: UIImage?
    var subscription: AnyCancellable?
    
    func observe(_ id: String) {
         self.subscription = Amplify.Publisher.create(
             Amplify.DataStore.observeQuery(
                 for: Account.self,
                 where: Account.keys.id == id
             )
         )
         .sink { completion in
             print("Completion event: \(completion)")
         } receiveValue: { snapshot in
             guard let account = snapshot.items.first else {
                 return
             }
             DispatchQueue.main.async {
                 self.account = account
                 print()
//                 print("DEBUG: Observing account \(account)")
                 print()
             }
         }
     }
    
    func getImage() async {
        guard var account = account else { return }
        do {
            let downloadTask = Amplify.Storage.downloadData(key: account.id)
            Task {
                for await progress in await downloadTask.progress {
                    print("Progress: \(progress)")
                }
            }
            let data = try await downloadTask.value
            self.image = UIImage(data: data)
            print("Completed: \(data)")
        } catch let error as StorageError {
            print("ERROR: Failed to get image for account \(error)")
        } catch {
            print("ERROR: \(error)")
        }
    }
    
    func getCurrentMatch() -> String? {
        guard var account = account else { return nil }
        guard let matchID = account.current_match else { return nil }
        return matchID
    }
    
    func updateLocation(_ location: CLLocation) async {
        guard var account = account else { return }
        
        let location = Location(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        account.location = location
        
        do {
            try await Amplify.DataStore.save(account)
//            print("DEBUG: Updated account with location \(updatedAccount)")
        } catch let error as DataStoreError {
            print("ERROR: Failed to update account with location \(error)")
        } catch {
            print("ERROR: \(error)")
        }
    }
    
    func deleteAccount() async {
        // TODO: Enable confirmation modal in SettingsView

        do {
            guard let accountToDelete = try await Amplify.DataStore.query(Account.self, byId: "BCE1F9A2-6456-4072-8D7B-E2B6556EBFF8") else { return }
            try await Amplify.DataStore.delete(accountToDelete)
            print("DEBUG: Updated deleted account")
        } catch let error as DataStoreError {
            print("ERROR: Failed to update profile prompts \(error)")
        } catch {
            print("ERROR: \(error)")
        }
        
        // TODO: Redirect to login page
    }
    
}
