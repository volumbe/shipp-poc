//
//  AuthView.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

struct AuthView: View {
    @EnvironmentObject var viewModel : AuthModel
    @State private var showSignInView = false
    @State private var showSignUpView = false
    @State private var showConfirmView = false
    
    var body: some View {
        HStack {
            Button("Sign in", action: {
                showSignInView = true
            })
            Text("|").foregroundColor(.blue)
            Button("Sign up", action: {
                showSignUpView = true
            })
        }
        .sheet(isPresented: $showSignInView) {
            SignInView(viewModel: viewModel)
        }
        .sheet(isPresented: $showSignUpView) {
            SignUpView(viewModel: viewModel)
        }
        .onAppear {
            Task {
                if await viewModel.isSignedIn() {
                    viewModel.rootHomeView()
                }
            }
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView().environmentObject(AuthModel())
    }
}
