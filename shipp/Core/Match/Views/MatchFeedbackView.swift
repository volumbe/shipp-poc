//
//  MatchFeedbackView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/18/23.
//

import SwiftUI

struct MatchFeedbackView: View {
    @EnvironmentObject var accountModel: AccountModel
    @EnvironmentObject var matchModel : MatchModel
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Feedback")) {
                    Toggle("Did you meet your match?", isOn: $matchModel.didMeet)
                        .toggleStyle(.switch)
                    VStack(alignment: .leading) {
                        Text("Please provide feedback on your match experience")
                            .font(.caption2).foregroundColor(.gray)
                            .fixedSize(horizontal: true, vertical: false)
                        TextEditor(text: $matchModel.matchFeedback)
                            .frame(height: 150)
                    }
                }
                Section(header: Text("Report")) {
                    Toggle("Do you want to report your match?", isOn: $matchModel.didReport)
                        .toggleStyle(.switch)
                    VStack(alignment: .leading) {
                        Text("Please explain why you are reporting your match")
                            .font(.caption2).foregroundColor(.gray)
                            .fixedSize(horizontal: true, vertical: false)
                        TextEditor(text: $matchModel.reportFeedback)
                            .frame(height: 150)
                    }
                }
            }
            .navigationBarItems(
                trailing: Button(action: {
                    Task {
                        await matchModel.submitFeedback()
                    }
                }, label: {
                    Text("Submit").padding(.horizontal)
                })
            )
        }
    }
}

struct MatchFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        MatchFeedbackView()
            .environmentObject(MatchModel())
    }
}
