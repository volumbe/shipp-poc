//
//  ProfileViewModel.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import Amplify
import Foundation

class ProfileViewModel: ObservableObject {
//    @Published var profile: Profile?
    
    func getProfile() async {
        do {
            let session = try await Amplify.Auth.fetchAuthSession()
            let attributes = try await Amplify.Auth.fetchUserAttributes()
            print("User attributes - \(attributes)")
        } catch {
            print("Failed on getting profile: ", error)
        }
        
    }
}
