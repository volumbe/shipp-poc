//
//  HomeViewModel.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/9/23.
//

import Amplify
import Foundation

class HomeViewModel: ObservableObject {
    var userID: String
    var accountID: String?
    var profileID: String?
    
    init(userID: String) {
        self.userID = userID
    }
    
    func loadDataStoreIDs() async {
        do {
            let result = try await Amplify.DataStore.query(Account.self, where: Account.keys.user_id == userID)
            guard let account = result.first else {
                print("There is no account for \(userID)")  // This should never be printed
                return
            }
            self.accountID = account.id
            self.profileID = account.accountProfileId
            
        } catch let error as DataStoreError {
            print("Failed to get account for User \(userID): ", error)
        } catch {
            print("Unexpected error: ", error)
        }
    }
    
    func hasProfile() async -> Bool {
        guard let id = profileID else {
            print("There is no profile ID")
            return false
        }
        do {
            let result = try await Amplify.DataStore.query(Profile.self, where: Profile.keys.id == id)
            if result.first != nil {
                return true
            } else {
                print("There is no Profile \(id)")     // This should never be printed
            }
            
        } catch let error as DataStoreError {
            print("Failed to get Account \(String(describing: accountID)): ", error)
        } catch {
            print("Unexpected error: ", error)
        }
        return false
    }
}
