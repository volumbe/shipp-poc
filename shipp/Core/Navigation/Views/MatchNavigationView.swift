//
//  MapView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/13/23.
//

import MapKit
import SwiftUI

struct MatchNavigationView: View {
    //TODO: Fix pulsing animation (gets buggy when you switch pages)
    @EnvironmentObject var accountModel: AccountModel
    @EnvironmentObject var matchModel: MatchModel
    @EnvironmentObject var locationManager: LocationManager
    @StateObject var viewModel = NavigationViewModel()
    @State private var distanceToMeetup: Float = 30   // feet
    @State private var distanceToMatch: Float = 0     // feet
    private var atMeetup : Bool {
        return distanceToMeetup >= 0 && distanceToMeetup < 25
    }
    private var bothAtMeetup: Bool {
        return distanceToMeetup < 10 && matchModel.arrived_curr == true && matchModel.arrived_other == true
    }
    @State var timeRemainingString: String = "0:00"
    @State var isAnimating = false
    
    func updateMeetupDistance() async {
        guard let userLocation = locationManager.userLocation else { return }
        guard let meetupLocation = matchModel.meetupLocation else { return }
        let updatedDistance = userLocation.distanceTo(meetupLocation)
        self.distanceToMeetup = updatedDistance
        if updatedDistance < 10 {
            await matchModel.setArrived(true)
        } else if matchModel.arrived_curr == true && updatedDistance > 25 {
            await matchModel.setArrived(false)
        }
    }
    
    var body: some View {
        Group {
            if bothAtMeetup {
                MatchProfileView(atMeetup: true)
            } else {
                ZStack {
                    NearbyNavigationView(meetupProgress: $distanceToMatch)
                    VStack {
                        if let profile = matchModel.otherProfile {
                            if distanceToMatch < 50 {
                                Text(profile.prompt_3?.response ?? "")
                            }
                            if distanceToMatch < 25 {
                                Text(profile.prompt_4?.response ?? "")
                            }
//                            EditPrompt(prompt: $matchModel.otherProfile.prompt_1, editable: false, answeredPrompts: .constant([""]))
                        }
                        Spacer()
                        MatchStatus(timeRemainingString: $timeRemainingString, distanceRemainingFeet: $distanceToMatch)
                    }
                    .ignoresSafeArea()
                }
            }
        }
        .environmentObject(locationManager)
        .environmentObject(matchModel)
        .environmentObject(viewModel)
        .onChange(of: distanceToMeetup, perform: { _ in
            isAnimating = false
            withAnimation(Animation.easeInOut(duration: 2)) {
                isAnimating = true
            }
        })
        .onAppear {
            Task {
                guard let id = matchModel.otherAccountID else { return }
                if matchModel.meetupDeadline == nil {
                    await matchModel.setMeetupDeadline()
                }
                viewModel.setLocation(matchModel.meetupLocation!)
                await updateMeetupDistance()
                matchModel.otherImage = await accountModel.getImage(accountID: id)
            }
        }
        .onChange(of: matchModel.otherLocation, perform: { matchLocation in
            guard let matchLocation = matchLocation else { return }
            guard let userLocation = locationManager.userLocation else { return }
            let updatedDistance = userLocation.distanceTo(matchLocation)
            self.distanceToMatch = updatedDistance
            print("DEBUG: Distance to match location is \(distanceToMatch) \(matchLocation)")
        })
        .onChange(of: locationManager.userLocation ?? CLLocation()) { newLocation in
            Task {
                if let meetupLocation = viewModel.selectedLocation {
                    // TODO: Cancel match if distance is too big
                }
                
                await accountModel.updateLocation(newLocation)
                await updateMeetupDistance()
                
                guard let matchLocation = matchModel.otherLocation else { return }
                let distanceToMatch = newLocation.distanceTo(matchLocation)
                self.distanceToMatch = distanceToMatch                
                print()
                print("DEBUG: Distance to meetup location is \(self.distanceToMeetup)")
                print("DEBUG: Distance to match location is \(self.distanceToMatch)")
                print()
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MatchNavigationView()
            .environmentObject(MatchModel())
            .environmentObject(AccountModel())
            .environmentObject(LocationManager())
    }
}
