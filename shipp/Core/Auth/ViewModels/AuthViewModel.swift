//
//  AuthViewModel.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import Amplify
import AWSPluginsCore
import Foundation
import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var number: String = ""
    @Published var password: String = ""
    @Published var confirmationCode: String = ""
    @Published var accountID: String?
    func initVariables() {
        email = ""
        password = ""
        confirmationCode = ""
    }
    
    func isSignedIn() async -> Bool {
        do {
            let signedIn = try await Amplify.Auth.fetchAuthSession().isSignedIn
            if signedIn {
                
            }
            return signedIn
        } catch {
            print("Error checking Auth Session", error)
        }
        return false
    }
    
    func getUser() async -> String? {
        do {
            let attributes = try await Amplify.Auth.fetchUserAttributes()
            for attribute in attributes {
                if attribute.key == .email {
                    return attribute.value
                }
            }
        } catch {
            print("Error getting Auth User", error)
            await signOut()
        }
        return ""
    }
    func signOut() async {
        await Amplify.Auth.signOut()
    }
    
    func signIn() async -> Bool {
        email = email.lowercased()
        do {
            let result = try await Amplify.Auth.signIn(username: email, password: password)
            if result.isSignedIn {
                initVariables()
            }
            return result.isSignedIn
        } catch let error as AuthError {
            print("Failed to sign in user \(email)", error)
        } catch {
            print("Unexpected error: ", error)
        }
        return false
    }
    
    func signUp() async -> Bool {
        email = email.lowercased()
        do {
            try await Amplify.Auth.signUp(username: email, password: password)
            return true
        } catch let error as AuthError {
            print("Failed to sign up user \(email)", error)
        } catch {
            print("Unexpected error: ", error)
        }
        return false
    }
    
    func confirmSignUp() async -> Bool {
        do {
            let result = try await Amplify.Auth.confirmSignUp(for: email, confirmationCode: confirmationCode)
            if result.isSignUpComplete {
                let account = Account(user_id: email, first_name: firstName, last_name: lastName, is_discoverable: false)
                try await Amplify.DataStore.save(account)
                await signIn()
            }
            return result.isSignUpComplete
        } catch let error as AuthError {
            //AuthError: An account with the given email already exists.
            print("Failed to sign in user \(email)", error)
        } catch {
            print("Unexpected error: ", error)
        }
        return false
    }
    
    func rootAuthView() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: AuthView().environmentObject(self))
            window.makeKeyAndVisible()
        }
    }
    
    func rootHomeView() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: HomeView().environmentObject(self))
            window.makeKeyAndVisible()
        }
    }
}
