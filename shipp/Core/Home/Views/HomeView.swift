//
//  HomeView.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/9/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authModel: AuthModel
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    @StateObject var accountModel: AccountModel = AccountModel()
    @StateObject var profileModel: ProfileModel = ProfileModel()
    @StateObject var locationManager: LocationManager = LocationManager()
    @StateObject var matchModel: MatchModel = MatchModel()
    @State var tabSelection = 1
    @State var loading = false
    var body: some View {
        NavigationView {
            VStack {
                if loading {
                    Text("Loading")
                }
                else {
                    TabView(selection: $tabSelection) {
                        SettingsView()
                            .environmentObject(accountModel)
                            .environmentObject(profileModel)
                            .tabItem { Text("Settings") }
                            .tag(1)
                        MatchView()
                            .environmentObject(accountModel)
                            .environmentObject(matchModel)
                            .environmentObject(locationManager)
                            .tabItem {
                                Text("Nearby")
                            }
                            .tag(2)
                        EditProfileView()
                            .environmentObject(accountModel)
                            .environmentObject(profileModel)
                            .tabItem {
                                Text("Profile")
                            }
//                            .badge(profileModel.isComplete() ? nil : "!")
                        .tag(3)
                    }
                }
            }.onAppear {
                Task {
                    await loadDataStore()
                    loading = false
                }
            }
            .onChange(of: accountModel.hasMatch, perform: { _ in
                Task {
                    await loadMatchModel()
                }
            })
            .onChange(of: accountModel.accountID) { id in
                Task {
                    await loadMatchModel()
                    accountModel.image = await accountModel.getImage(accountID: id!)
                }
            }
            .onChange(of: matchModel.otherAccountID) { _ in
                Task {
                    print("DEBUG: Loading other account")
                    await matchModel.getOtherAccount()
                }
            }
            .onChange(of: locationManager.userLocation) { newLocation in
                guard let newLocation = newLocation else { return }
                Task {
                    await accountModel.updateLocation(newLocation)
                }
            }
        }
        .environmentObject(accountModel)
    }
    
    func loadDataStore() async {
        // Get user, account and profile IDs
        guard let _ = await authModel.getUser() else {
            authModel.rootAuthView()
            return
        }
        
        //TODO: turn following into one line
        viewModel.accountID = authModel.accountID
        await viewModel.loadDataStoreIDs()
                
        // Start observing account model from DataStore
        guard let accountID = viewModel.accountID else { return }
        await accountModel.queryAccount(accountID)
        matchModel.accountID = accountID
        
        // Start observing profile model from DataStore
        guard let profileID = viewModel.profileID else { return }
        profileModel.observe(profileID)
    }
    
    func loadMatchModel() async {
        guard let account = accountModel.account else { return }
        guard let matchID = account.current_match else { return }
        matchModel.queryMatch(matchID)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(AuthModel())
    }
}
