//
//  SignInView.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/9/23.
//

import SwiftUI

struct SignInView: View {
    @ObservedObject var viewModel: AuthViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Email", text: $viewModel.email)
                .textCase(.lowercase)
            SecureField("Password", text: $viewModel.password)
            Button("Sign in", action: {
                Task {
                    if await viewModel.signIn() {
                        dismiss()
                        showHomeView()
                    }
                }
            })
        }.padding(.horizontal)
    }
    
    
    func showHomeView() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: HomeView().environmentObject(viewModel))
            window.makeKeyAndVisible()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(viewModel: AuthViewModel())
    }
}
