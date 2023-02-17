//
//  HomeView.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/9/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authModel: AuthViewModel
    @StateObject var viewModel: HomeViewModel = HomeViewModel(userID: "")
    @StateObject var accountModel: AccountModel = AccountModel()
    @StateObject var profileModel: ProfileModel = ProfileModel()
    @StateObject var matchModel: MatchModel = MatchModel()
    
    @State private var showProfileCreationView = true
    @State var tabSelection = 1
    @State var loading = true
    
    var body: some View {
        NavigationView {
            VStack {
                if loading {
                    Text("Loading")
                }
                else if showProfileCreationView {
                    AccountCreationView()
                }
                else {
                    TabView(selection: $tabSelection) {
                        SettingsView()
                            .tabItem { Text("Settings") }
                            .tag(1)
                        MatchView()
                            .environmentObject(accountModel)
                            .environmentObject(matchModel)
                            .tabItem { Text("Nearby") }
                            .tag(2)
                        EditProfileView()
                            .environmentObject(accountModel)
                            .environmentObject(profileModel)
                            .tabItem { Text("Profile") }
                        .tag(3)
                    }
                    .navigationBarItems(
                        trailing:
                            Button("Sign out") {
                                Task {
                                    await authModel.signOut()
                                    authModel.rootAuthView()
                                }
                            })
                }
            }.onAppear {
                Task {
                    await loadDataStore()
                    loading = false
                }
            }
        }
        .environmentObject(accountModel)
    }
    
    func loadDataStore() async {
        // Get user, account and profile IDs
        guard let userID = await authModel.getUser() else {
            authModel.rootAuthView()
            return
        }
        
        //TODO: turn following into one line
        viewModel.userID = userID
        await viewModel.loadDataStoreIDs()
        
        showProfileCreationView = await !viewModel.hasProfile()
        
        // Start observing account model from DataStore
        guard let accountID = viewModel.accountID else { return }
        accountModel.observe(accountID)
        
        // Start observing profile model from DataStore
        guard let profileID = viewModel.profileID else { return }
        profileModel.observe(profileID)
        
        guard let account = accountModel.account else { return }
        
        // Load image from account model
        await accountModel.getImage()
        
        // Start observing match model from DataStore if account has a match
        guard let matchID = account.current_match else { return }
        matchModel.accountID = accountID
        matchModel.observe(matchID)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(AuthViewModel())
    }
}
