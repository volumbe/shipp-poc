//
//  PoliticsView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/8/23.
//

import SwiftUI

struct PoliticsView: View {
    @ObservedObject var viewModel: AccountCreationViewModel
    var politics: [String] = [
    "Liberal",
    "Conservative",
    "Prefer not to say"
    ]
    
    @State var selectedPolitics = Set<String>()
    
    var enableNext : Bool {
        return !selectedPolitics.isEmpty
    }

    
    var body: some View {
        VStack {
            HStack {
                ForEach(politics, id: \.self) { item in
                    SelectableCapsule(title: item, selectedItems: $selectedPolitics, multiSelect: false)
                }
            }
        }
        .navigationTitle("Politics").navigationBarTitleDisplayMode(.inline)
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
                        await viewModel.updateProfile()
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
