//
//  ProfilePhotoView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/10/23.
//

import SwiftUI

struct ProfilePhotoView: View {
    @EnvironmentObject var authModel: AuthViewModel
    @ObservedObject var viewModel: AccountCreationViewModel
    
    @State private var showPhotoPicker : Bool = false
    @State private var selectedImage = UIImage(systemName: "star.fill")!
    
    var body: some View {
        VStack {
            Image(uiImage: selectedImage)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    showPhotoPicker = true
                }
            
            Spacer()
        }
        .navigationTitle("Profile Photo")
        .navigationBarItems(
            trailing:
                NavigationLink(destination: EmptyView(),
                               label: {
                                   Text("Next").padding()
                               })
                .simultaneousGesture(TapGesture().onEnded{
                    Task {
                        viewModel.photoImage = selectedImage
                        await viewModel.uploadPhoto()
                        authModel.rootHomeView()
                    }
                })
        )
        .sheet(isPresented: $showPhotoPicker, content: {
            PhotoPicker(image: $selectedImage)
        })
    }
}

struct ProfilePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoView(viewModel: AccountCreationViewModel())
    }
}
