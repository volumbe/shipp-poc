//
//  MatchView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/11/23.
//

import SwiftUI

struct MatchView: View {
    @Environment(\.scenePhase) var scenePhase
    @State private var isActive = false
    @EnvironmentObject var accountModel: AccountModel
    @EnvironmentObject var matchModel : MatchModel
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    init() {
        if let _ = matchModel.updateTimeRemaining() {
            isActive = true
        }
    }
    var body: some View {
        Group {
            Text("Time \(matchModel.timeRemaining)")
        }
        .onReceive((timer), perform: { time in
            if matchModel.timeRemaining > 0 {
                matchModel.timeRemaining -= 1
            }
        })
        .onChange(of: scenePhase) { newPhase in
            if newPhase == .active {
                
            }
        }
        .onAppear {
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
