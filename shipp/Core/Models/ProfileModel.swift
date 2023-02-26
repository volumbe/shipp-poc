//
//  ProfileModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/13/23.
//

import Amplify
import Foundation
import Combine
import CoreLocation

final class ProfileModel: NSObject, ObservableObject {
    @Published var profile: Profile?
    @Published var answeredPrompts: Set<String> = Set()
    @Published var prompt1: Prompt = Prompt(title: "", response: "")
    @Published var prompt2: Prompt = Prompt(title: "", response: "")
    @Published var prompt3: Prompt = Prompt(title: "", response: "")
    @Published var prompt4: Prompt = Prompt(title: "", response: "")
    
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
                 print("DEBUG: Observing account \(profile)")
                 print()
             }
         }
     }
    
    
    func getPrompts() {
        guard var profile = profile else { return }
        
        if let prompt1 = profile.prompt_1 {
            self.prompt1 = prompt1
            answeredPrompts.insert(prompt3.title)
        }
        
        if let prompt2 = profile.prompt_2 {
            self.prompt1 = prompt2
            answeredPrompts.insert(prompt3.title)
        }

        if let prompt3 = profile.prompt_3 {
            self.prompt1 = prompt3
            answeredPrompts.insert(prompt3.title)
        }
        if let prompt4 = profile.prompt_4 {
            self.prompt1 = prompt4
            answeredPrompts.insert(prompt4.title)
        }

    }
    
    func promptIsNotEmpty(_ prompt: Prompt) -> Bool {
        return !(prompt.title.trim().isEmpty || prompt.response.trim().isEmpty)
    }
    
    func updatePrompts() async {
        guard var profile = profile else { return }
        
        if promptIsNotEmpty(prompt1) { profile.prompt_1 = prompt1 }
        if promptIsNotEmpty(prompt2) { profile.prompt_2 = prompt2 }
        if promptIsNotEmpty(prompt3) { profile.prompt_3 = prompt3 }
        if promptIsNotEmpty(prompt4) { profile.prompt_4 = prompt4 }
        
        do {
            let updatedProfile = try await Amplify.DataStore.save(profile)
            DispatchQueue.main.async {
                self.profile = updatedProfile
            }
            print("DEBUG: Updated profile prompts \(updatedProfile)")
        } catch let error as DataStoreError {
            print("ERROR: Failed to update profile prompts \(error)")
        } catch {
            print("ERROR: \(error)")
        }
    }
    
}
