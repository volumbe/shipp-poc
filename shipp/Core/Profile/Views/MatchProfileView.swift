//
//  MatchProfileView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/17/23.
//

import SwiftUI
import Amplify

struct MatchProfileView: View {
    @EnvironmentObject var matchModel : MatchModel
    var atMeetup = true
    var body: some View {
        if let profile = matchModel.otherProfile {
            ScrollView {
                VStack {
                    if atMeetup {
                        Image(uiImage: matchModel.otherImage ?? UIImage(systemName: "person.circle")!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .padding(.bottom)
//                        ProfilePrompt(title: "Example prompt", response: profile.prompt_4)
//                            .padding(.bottom)
//                        ProfilePrompt(startRight: true, title: "Example prompt", response: profile.prompt_3)
//                            .padding(.bottom)
                    }
//                    ProfilePrompt(title: "Example prompt", response: profile.prompt_2)
//                        .padding(.bottom)
//                    ProfilePrompt(startRight: true, title: "Example prompt", response: profile.prompt_1)
//                        .padding(.bottom)
                    
                }
                
            }
            
        } else {
            EmptyView()
        }
    }
}

struct MatchProfileView_Previews: PreviewProvider {
    private var matchModel = MatchModel()
    
    init() {
        matchModel.otherProfile = Profile(birth_date: Temporal.Date(Date()), ethnicities: ["Black"], sexuality: "Women", politics: "Liberal", prompt_1: Prompt(title: "Prompt", response: "Response"), prompt_2: Prompt(title: "Prompt", response: "Response"), prompt_3: Prompt(title: "Prompt", response: "Response"), prompt_4: Prompt(title: "Prompt", response: "Response"))
    }
    static var previews: some View {
        MatchProfileView()
            .environmentObject(MatchModel())
    }
}
