//
//  SignUpView.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/9/23.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel: AuthModel
    @Environment(\.dismiss) var dismiss
    
    @State var showConfirmation : Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            if !showConfirmation {
                HStack {
                    TextField("First name", text: $viewModel.firstName)
                    TextField("Last name", text: $viewModel.lastName)
                }
                TextField("Email", text: $viewModel.email)
                    .autocorrectionDisabled(true)
                SecureField("Password", text: $viewModel.password)
                Button("Sign Up", action: {
                    Task {
                        if await viewModel.signUp() {
                            showConfirmation.toggle()
                        }
                    }
                })
            } else {
                HStack {
                    TextField("Confirmation Code", text: $viewModel.confirmationCode)
                        .keyboardType(.numberPad)
                    Button("Confirm", action: {
                        Task {
                            if await viewModel.confirmSignUp() {
                                print("Signed in")
                                showConfirmation.toggle()
                                dismiss()
                                viewModel.rootAccountCreationView()
                            }
                        }
                    })
                }
            }
        }.padding(.horizontal)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(viewModel: AuthModel())
    }
}
