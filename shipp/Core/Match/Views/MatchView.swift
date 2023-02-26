//
//  MatchView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/11/23.
//

import SwiftUI

struct MatchView: View {
    @Environment(\.scenePhase) var scenePhase
    @State private var showMatch = false
    @State private var showFeedback = false
    @EnvironmentObject var accountModel: AccountModel
    @EnvironmentObject var matchModel : MatchModel
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var timeRemainingString: String = ""
    
    var body: some View {
        
        Group {
            NavigationView {
                ZStack {
                    if accountModel.account?.current_match == nil {
                        Text("Sorry no matches available")
                    } else if matchModel.accepted_by_curr && matchModel.accepted_by_other && !showFeedback {
                        MatchNavigationView()
                    } else if matchModel.accepted_by_curr && !showFeedback {
                        Text("Waiting for your match to accept :)")
                    } else if showMatch {
                        VStack {
                            MatchProfileView()
                        }
                    } else if showFeedback {
                        MatchFeedbackView()
                    }
                    else {
                        Text("Sorry no matches available")
                    }
                }
                .navigationBarItems(
                    leading:
                        Text(accountModel.account?.current_match == nil ? "" : "Time Remaining: \(timeRemainingString)").font(.title3),
                    trailing:
                        Button(action: {
                            Task {
                                await matchModel.setCancelled()
                            }
                        }, label: {
                            Text("Cancel").font(.title3)
                        })
                )
            }
        }
        .onReceive((timer), perform: { time in
            if matchModel.arrived_curr == true && matchModel.arrived_other == true {
                guard let deadline = matchModel.meetupDeadline else { return }
                if deadline.timeIntervalSinceNow < 0 {
                    self.showFeedback = true
                }
            }
            if showMatch && matchModel.timeRemaining > 0 {
                matchModel.getTimeRemaining()
                timeRemainingString = matchModel.getTimeRemainingString(matchModel.timeRemaining)
            }
        })
        .onChange(of: scenePhase) { newPhase in
            if newPhase == .active {
            }
        }
        .onChange(of: matchModel.otherAccountID, perform: { _ in
            Task {
                await matchModel.getOtherAccount()
            }
        })
        .onAppear {
            Task {
                if matchModel.timeRemaining > 0 {
                    timeRemainingString = matchModel.getTimeRemainingString(matchModel.timeRemaining)
                    showMatch = true
                } else {
                    showMatch = false
                }
            }
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
            .environmentObject(AccountModel())
            .environmentObject(MatchModel())
    }
}

