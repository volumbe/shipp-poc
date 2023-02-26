//
//  HomeViewModel.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/9/23.
//

import Amplify
import Foundation

class HomeViewModel: ObservableObject {
    var accountID: String?
    var profileID: String?
    
    func loadDataStoreIDs() async {
        guard let accountID = accountID else { return }
        do {
            let result = try await Amplify.DataStore.query(Account.self, byId: accountID)
            guard let account = result else {
                print("There is no account for \(accountID)")  // This should never be printed
                return
            }
            self.accountID = account.id
            self.profileID = account.accountProfileId
            
        } catch let error as DataStoreError {
            print("Failed to get account for account \(accountID): ", error)
        } catch {
            print("Unexpected error: ", error)
        }
    }
    
    func hasProfile() -> Bool {
        return self.profileID != nil
    }
    
}
