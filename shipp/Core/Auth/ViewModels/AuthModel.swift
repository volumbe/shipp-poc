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

class AuthModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var number: String = ""
    @Published var password: String = ""
    @Published var confirmationCode: String = ""
    @Published var accountID: String?
    func initVariables() {
        DispatchQueue.main.async {
            self.email = ""
            self.password = ""
            self.confirmationCode = ""
        }
    }
    
    func isSignedIn() async -> Bool {
        do {
            let signedIn = try await Amplify.Auth.fetchAuthSession().isSignedIn
            if signedIn {
                let userID = await getUser()
                let results = try await Amplify.DataStore.query(Account.self, where: Account.keys.user_id == userID)
                guard let account = results.first else { return false }
                DispatchQueue.main.async {
                    self.accountID = account.id
                }
            }
            return signedIn
        } catch {
            print("Error checking Auth Session", error)
        }
        return false
    }
    
    func getAccountID(userID: String) async {
        do {
            let results = try await Amplify.DataStore.query(Account.self, where: Account.keys.user_id == userID)
            guard let account = results.first else { return }
            self.accountID = account.id
            print("DEBUG: Got account id \(account.id)")
        } catch {
            print("DEBUG: Error getting account ID")
        }
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
        DispatchQueue.main.async {
            self.rootAuthView()
        }
    }
    
    func signIn() async -> Bool {
        self.email = self.email.lowercased()
        do {
            print("DEBUG: Signing in user \(email.lowercased())")
            let result = try await Amplify.Auth.signIn(username: email.lowercased(), password: password)
            if result.isSignedIn {
                initVariables()
                await getAccountID(userID: email)
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
            print("DEBUG: Signing up user \(email)")
            try await Amplify.Auth.signUp(username: email.lowercased(), password: password)
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
            print("DEBUG: Confirming sign up")
            let result = try await Amplify.Auth.confirmSignUp(for: email, confirmationCode: confirmationCode)
            if result.isSignUpComplete {
                let account = Account(user_id: email, first_name: firstName, last_name: lastName, is_discoverable: false)
                let createdAccount = try await Amplify.DataStore.save(account)
                print("DEBUG: Created account \(createdAccount)")
                accountID = createdAccount.id
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
        guard let _ = accountID else { return }
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: HomeView().environmentObject(self))
            window.makeKeyAndVisible()
        }
    }
    
    func rootAccountCreationView() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: AccountCreationView().environmentObject(self))
            window.makeKeyAndVisible()
        }
    }
}
