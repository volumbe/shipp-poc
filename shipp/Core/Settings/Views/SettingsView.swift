//
//  SettingsView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/11/23.
//

import SwiftUI
import Amplify
struct SettingsView: View {
    @EnvironmentObject var authModel: AuthModel
    @EnvironmentObject var accountModel: AccountModel
    @EnvironmentObject var profileModel: ProfileModel
    @State var selectedEthnicities = Set<String>()
    @State var selectedSexuality = Set<String>()
    @State var selectedPolitics = Set<String>()
    @State var isDiscoverable = true
    var body: some View {
//        ScrollView {
//            VStack {
//                if let account = accountModel.account, let profile = profileModel.profile {
//                    Text(account.user_id)
//                    Text("\(account.first_name) \(account.last_name)")
//                    Text(String(describing: profile.ethnicities))
//                    Text(String(describing: profile.sexuality))
//                    Text(String(describing: profile.politics))
//                }
//            }
//            HStack {
//                Button("DEBUG") {
//                    //TODO: go to debug section
//
//                }
//                Button("Sign out") {
//                    Task {
//                        await authModel.signOut()
//                    }
//                }
//            }
//        }
        Form {
            if let account = accountModel.account, let profile = profileModel.profile {
                Section(header: Text("Personal Information")) {
                    Text(account.first_name)
                    Text(account.last_name)
                    Text(account.user_id)
                    DatePicker("Birth Date", selection: .constant(profile.birth_date.foundationDate), displayedComponents: .date)
                        .disabled(true)
                }
                Section(header: Text("Profile")) {
                    NavigationLink(profile.ethnicities.joined(separator: ", ")) {
                        EditEthnicityView(selectedEthnicities: $selectedEthnicities)
                    }
                    NavigationLink("Match with \(profile.sexuality)") {
                        EditSexualityView(selectedSexuality: $selectedSexuality)
                    }
                    NavigationLink(profile.politics) {
                        EditPoliticsView(selectedPolitics: $selectedPolitics)
                    }
                    Toggle("Is Discoverable", isOn: $isDiscoverable)
                        .toggleStyle(SwitchToggleStyle(tint: .accentColor))
                }
                .onChange(of: isDiscoverable) { _ in
                    //TODO: Update to AWS
                }
                .onAppear {
                    for ethnicity in profile.ethnicities {
                        selectedEthnicities.insert(ethnicity)
                    }
                    selectedSexuality.insert(profile.sexuality)
                    selectedPolitics.insert(profile.politics)
                    isDiscoverable = account.is_discoverable
                }
            }
            Section(header: Text("Actions")) {
                NavigationLink("Debug") {
                    DebugView()
                }
                Button("Sign out") {
                    Task {
                        await authModel.signOut()
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var accountModel = AccountModel()
    static var profileModel = ProfileModel()
    
    static func loadModels() {
        SettingsView_Previews.accountModel.account = Account(user_id: "gmail", first_name: "First", last_name: "Last", is_discoverable: false)
        SettingsView_Previews.profileModel.profile = Profile(birth_date: Temporal.Date(Date()), ethnicities: ["East Asian", "South Asian"], sexuality: "Woman", politics: "Liberal", prompt_1: Prompt(title: "Example prompt", response: "Example response"), prompt_2: Prompt(title: "Example prompt", response: "Example response"))
    
    }
    
    static var previews: some View {
        SettingsView()
            .environmentObject(AuthModel())
            .environmentObject(self.accountModel)
            .environmentObject(self.profileModel)
            .onAppear {
                loadModels()
            }
    }
}
