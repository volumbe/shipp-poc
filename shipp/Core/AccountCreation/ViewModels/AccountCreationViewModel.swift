//
//  AccountCreationViewModel.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI
import Amplify
import Foundation
import Combine

class AccountCreationViewModel: ObservableObject {
    @Published var profile: Profile?
    @Published var accountID: String?
    @Published var userID: String = ""
    @Published var subscription: AnyCancellable?
    @Published var ethnicities: Set<String> = Set()
    @Published var politics: String = ""
    @Published var sexuality: String = ""
    @Published var prompt1: String = ""
    @Published var prompt2: String = ""
    @Published var prompt3: String = ""
    @Published var prompt4: String = ""
    @Published var photoImage: UIImage?
    @Published var date: Date = Foundation.Date()
    
    public var dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let endRange = calendar.date(byAdding: .year, value: -18, to: Date())
        let startRange = calendar.date(byAdding: .year, value: -50, to: Date())
        return (startRange!...endRange!)
    }()
    
    
    func createProfile() async {
        let birthDate = Temporal.Date(date)
        let ethnicities = Array(ethnicities)
        do {
            guard var account = try await Amplify.DataStore.query(Account.self, where: Account.keys.user_id == userID).first else {
                print("DEBUG: No account \(String(describing: accountID))")
                return
            }
            self.accountID = account.id
            let profile = Profile(birth_date: birthDate, ethnicities: ethnicities, sexuality: sexuality, politics: politics)
            let savedProfile = try await Amplify.DataStore.save(profile)
            account.accountProfileId = savedProfile.id
            try await Amplify.DataStore.save(account)
            observeProfile(profileID: savedProfile.id)
            print("Succeeded")
            
        } catch let error as DataStoreError {
            print("Failed to create profile: ", error)
        } catch {
            print("Unexpected error", error)
        }
    }
    
    func observeProfile(profileID: String) {
            self.subscription = Amplify.Publisher.create(
                Amplify.DataStore.observeQuery(
                    for: Profile.self,
                    where: Profile.keys.id == profileID
                )
            )
            .sink { completion in
                print("Completion event: \(completion)")
            } receiveValue: { snapshot in
                guard let profile = snapshot.items.first else {
                    return
                }
                DispatchQueue.main.async {
                    self.profile = profile
                }
            }
        }
    
    func getProfile() async {
        guard let accountID = accountID else { return }
        do {
            let result = try await Amplify.DataStore.query(Account.self, byId: accountID)
            guard let account = result else {
                print("There is no account for \(accountID)")  // This should never be printed
                return
            }
            if let profile = account.profile {
                observeProfile(profileID: profile.id)
            }
        } catch let error as DataStoreError {
            print("Failed to get account for User \(accountID): ", error)
        } catch {
            print("Unexpected error: ", error)
        }
    }
    
    func updateProfile() async {
        guard var profile = self.profile else {
            return
        }
        
        profile.ethnicities = Array(ethnicities)
        profile.sexuality = sexuality
        profile.politics = politics
        
         do {
             let updatedProfile = try await Amplify.DataStore.save(profile)
             print("Updated profile successfully: \(updatedProfile)")
         } catch let error as DataStoreError {
             print("Failed to update post: \(error)")
         } catch {
             print("Unexpected error \(error)")
         }
        
    }
    
    func uploadPhoto() async {
        guard let image = photoImage, let accountID = accountID else { return }
        let imageData = image.jpegData(compressionQuality: 1)
        do {
            let uploadTask = Amplify.Storage.uploadData(
                key: accountID,
                data: imageData!
            )
            Task {
                for await progress in await uploadTask.progress {
                    print("DEBUG: Photo upload progress: \(progress)")
                }
            }
            let value = try await uploadTask.value
            print("DEBUG: Completed photo upload: \(value)")
        } catch {
            print("Error", error)
        }
    }
}


