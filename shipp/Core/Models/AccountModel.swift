//
//  AccountModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/13/23.
//

import SwiftUI
import Amplify
import Foundation
import Combine
import CoreLocation

final class AccountModel: NSObject, ObservableObject {
    @Published var account: Account?
    @Published var accountID: String?
    @Published var image: UIImage?
    var subscription: AnyCancellable?
    var accountSubscription: AnyCancellable?
    @Published var hasMatch = false
    
    func queryAccount(_ id: String) async {
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
                self.accountID = id
                self.observeAccountModel()
                print("DEBUG queryAccount(): Observing account \(account)")
                print()
            }
        }
     }
    
    
    func observeAccountModel() {
        guard let id = self.accountID else { return }
        self.accountSubscription = Amplify.Publisher.create(Amplify.DataStore.observe(Account.self))
        .sink {
            if case let .failure(error) = $0 {
                print("ERROR observeAccountModel(): Match's account subscription received error - \(error)")
            }
        }
        receiveValue: { changes in
            if changes.modelId == id {
                do {
                    let updatedAccount = try changes.decodeModel(as: Account.self)
                    print("DEBUG observeAccountModel(): Account model was updated \(updatedAccount)")
                    DispatchQueue.main.async {
                        self.account = updatedAccount
                        if (updatedAccount.current_match != nil || updatedAccount.current_match != "") {
                            self.hasMatch = true
                        }
                    }
                } catch {
                    print("ERROR observeAccountModel(): Failed to decode mutation event - \(error)")
                }
            }
        }
     }
    
    func getImage(accountID: String) async -> UIImage? {
        do {
            let downloadTask = Amplify.Storage.downloadData(key: accountID)
            Task {
                for await progress in await downloadTask.progress {
                    print("PROGRESS getImage(): \(progress)")
                }
            }
            let data = try await downloadTask.value
            return UIImage(data: data)
        } catch let error as StorageError {
            print("ERROR: Failed to get image for account \(error)")
        } catch {
            print("ERROR: \(error)")
        }
        
        return nil
    }
    
    func getCurrentMatch() -> String? {
        guard let account = account else { return nil }
        guard let matchID = account.current_match else { return nil }
        return matchID
    }
    
    func updateLocation(_ location: CLLocation) async {
        guard var account = account else { return }
        
        let location = Location(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        account.location = location
        
        do {
            let updatedAccount = try await Amplify.DataStore.save(account)
            print("DEBUG updateLocation(): Updated account with location \(updatedAccount)")
        } catch let error as DataStoreError {
            print("ERROR updateLocation(): Failed to update account with location \(error)")
        } catch {
            print("ERROR updateLocation(): \(error)")
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
