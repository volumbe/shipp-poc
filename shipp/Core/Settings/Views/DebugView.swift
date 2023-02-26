//
//  DebugView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/26/23.
//

import SwiftUI
import MapKit
import Amplify

struct DebugView: View {
    @EnvironmentObject var accountModel: AccountModel
    @EnvironmentObject var profileModel: ProfileModel
    @State var allAccounts: [Account] = []
    @State var selectedAccounts : [String] = []
    @State var selectedLocation: CLLocationCoordinate2D = CLLocationCoordinate2D()
    func getAccounts() async {
        do {
            let accounts = try await Amplify.DataStore.query(Account.self)
            allAccounts = accounts
            
        } catch let error as DataStoreError {
            print("ERROR getAccounts(): \(error)")
        } catch {
            print("ERROR getAccounts(): \(error)")
        }
        
    }
    
    func createMatch() async {
        if selectedAccounts.count < 2 { return }
        guard var account1 = selectedAccounts.first else { return }
        var account2 = selectedAccounts[1]
        print("ACCOUNTS \(account1) \(account2)")
        do {
            
            var dateComponent = DateComponents()
            dateComponent.day = 2
            let deadline = Calendar.current.date(byAdding: dateComponent, to: Date())!
            let match = Match(account_id_1: account1, account_id_2: account2, meetup_deadline: Temporal.DateTime(deadline), location: Location(latitude: selectedLocation.latitude, longitude: selectedLocation.longitude))
            let result = try await Amplify.DataStore.save(match)
            print("Saved match")
            var account_1 = try await Amplify.DataStore.query(Account.self, byId: account1)
            var account_2 = try await Amplify.DataStore.query(Account.self, byId: account2)
            account_1!.current_match = result.id
            account_2!.current_match = result.id
            try await Amplify.DataStore.save(account_1!)
            try await Amplify.DataStore.save(account_2!)
            
        } catch let error as DataStoreError {
            print("ERROR createAccount(): \(error)")
        } catch {
            print("ERROR createAccount(): \(error)")
        }
    }
    
    var body: some View {
        VStack {
            List(allAccounts, id: \.self) { account in
                Text("\(account.first_name) \(account.last_name)")
                    .font(selectedAccounts.contains(account.id) ? .headline : .callout)
                    .onTapGesture {
                        if selectedAccounts.contains(account.id) {
                            guard let index = selectedAccounts.firstIndex(where: {$0 == account.id}) else { return }
                            selectedAccounts.remove(at: index)
                        } else {
                            selectedAccounts.append(account.id)
                        }
                        print("DEBUG VIEW \(selectedAccounts) \(selectedLocation)")
                    }
            }
            MiniMapViewRepresentable(coordinate: $selectedLocation)
                .frame(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.width - 10)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack {
                Button("Create Match") {
                    //TODO: Get coordinates
                }
            }
        }
        .onAppear {
            Task {
                await getAccounts()
            }
        }
    }
}

struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}
