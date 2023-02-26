//
//  AccountCreationView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

struct AccountCreationView: View {
    @EnvironmentObject var authModel: AuthModel
    @ObservedObject var viewModel = AccountCreationViewModel()
    var body: some View {
        NavigationView {
            BirthDateView(viewModel: self.viewModel)
        }
        .onAppear {
            Task {
                viewModel.userID = await authModel.getUser()!
                print("DEBUG: Will create account with user ID \(viewModel.userID)")
            }
        }
    }
}

struct AccountCreationView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCreationView()
            .environmentObject(AuthModel())
    }
}
