//
//  ProfileView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/10/23.
//

import SwiftUI

struct EditProfileView: View {
    @EnvironmentObject var authModel: AuthModel
    @EnvironmentObject var accountModel: AccountModel
    @EnvironmentObject var profileModel: ProfileModel
    var body: some View {
        ScrollView {
            VStack {
                Image(uiImage: accountModel.image ?? UIImage(systemName: "person.circle")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .padding()
                VStack {
                    // TODO: Get rid of placeholders, add prompts
                    EditPrompt(prompt: $profileModel.prompt1, answeredPrompts: $profileModel.answeredPrompts)
                    EditPrompt(prompt: $profileModel.prompt2, answeredPrompts: $profileModel.answeredPrompts)
                    EditPrompt(prompt: $profileModel.prompt3, answeredPrompts: $profileModel.answeredPrompts)
                    EditPrompt(prompt: $profileModel.prompt4, answeredPrompts: $profileModel.answeredPrompts)
                }
                Button("Save") {
                    Task {
                        await profileModel.updatePrompts()
                    }
                }
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
            .environmentObject(AccountModel())
            .environmentObject(AuthModel())
            .environmentObject(ProfileModel())
    }
}
