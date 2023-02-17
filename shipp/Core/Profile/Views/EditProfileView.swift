//
//  ProfileView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/10/23.
//

import SwiftUI

struct EditProfileView: View {
    @EnvironmentObject var authModel: AuthViewModel
    @EnvironmentObject var accountModel: AccountModel
    @EnvironmentObject var profileModel: ProfileModel
    @State var profileImage = UIImage(systemName: "person.circle")
    var body: some View {
        ScrollView {
            VStack {
                Image(uiImage: profileImage!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .padding()
                VStack {
                    Prompt(title: "Example prompt", response: $profileModel.prompt1)
                    Prompt(title: "Example prompt", response: $profileModel.prompt2)
                    Prompt(title: "Example prompt", response: $profileModel.prompt3)
                    Prompt(title: "Example prompt", response: $profileModel.prompt4)
                }
                Button("Save") {
                    Task {
                        await profileModel.updatePrompts()
                    }
                }
                Spacer()
            }
        }
        .onAppear {
            Task {
                await accountModel.getImage()
                await accountModel.deleteAccount()
                if let image = accountModel.image {
                    profileImage = image
                }
                profileModel.getPrompts()
            }
        }   
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditProfileView().environmentObject(AuthViewModel()).environmentObject(ProfileModel())
//    }
//}
