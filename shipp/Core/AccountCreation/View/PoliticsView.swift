//
//  PoliticsView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

struct PoliticsView: View {
    @ObservedObject var viewModel: AccountCreationViewModel
    var politics: [String] = [
    "Liberal",
    "Moderate",
    "Conservative",
    "Nonpolitical",
    "Prefer not to say"
    ]
    
    @State var selectedPolitics = Set<String>()
    
    var enableNext : Bool {
        return !selectedPolitics.isEmpty
    }

    
    var body: some View {
        VStack {
            VStack {
                ForEach(politics, id: \.self) { item in
                    SelectableCapsule(title: item, selectedItems: $selectedPolitics, multiSelect: false)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                }
            }
            Spacer()
        }
        .navigationTitle("What is your political stance?").navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                NavigationLink(destination: ProfilePhotoView(viewModel: viewModel),
                               label: {
                                   Text("Next").padding()
                               })
                .simultaneousGesture(TapGesture().onEnded{
                    Task {
                        if let selection = selectedPolitics.first {
                            viewModel.politics = selection
                        }
                        await viewModel.createProfile()
                    }
                })
                .disabled(!enableNext)
        )
    }}

struct PoliticsView_Previews: PreviewProvider {
    static var previews: some View {
        PoliticsView(viewModel: AccountCreationViewModel())
    }
}
