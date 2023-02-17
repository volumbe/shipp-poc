//
//  ProfileModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/13/23.
//

import Amplify
import Foundation
import Combine
import CoreLocation

final class ProfileModel: NSObject, ObservableObject {
    @Published var profile: Profile?
    @Published var prompt1: String = ""
    @Published var prompt2: String = ""
    @Published var prompt3: String = ""
    @Published var prompt4: String = ""
    
    var subscription: AnyCancellable?
    
    func observe(_ id: String) {
         self.subscription = Amplify.Publisher.create(
             Amplify.DataStore.observeQuery(
                 for: Profile.self,
                 where: Profile.keys.id == id
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
                 self.getPrompts()
                 print()
//                 print("DEBUG: Observing account \(profile)")
                 print()
             }
         }
     }
    
    func getPrompts() {
        guard let profile = profile else { return }
        
        prompt1 = profile.about_prompt_1 ?? "Respond to a prompt"
        prompt2 = profile.about_prompt_2 ?? "Respond to a prompt"
        prompt3 = profile.weekly_prompt_1 ?? "Respond to a prompt"
        prompt4 = profile.weekly_prompt_2 ?? "Respond to a prompt"
    }
    
    func updatePrompts() async {
        guard var profile = profile else { return }
        
        profile.about_prompt_1 = prompt1
        profile.about_prompt_2 = prompt2
        profile.weekly_prompt_1 = prompt3
        profile.weekly_prompt_2 = prompt4
        
        do {
            let updatedProfile = try await Amplify.DataStore.save(profile)
            print("DEBUG: Updated profile prompts \(updatedProfile)")
        } catch let error as DataStoreError {
            print("ERROR: Failed to update profile prompts \(error)")
        } catch {
            print("ERROR: \(error)")
        }
    }
    
}
