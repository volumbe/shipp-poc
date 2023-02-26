//
//  EthnicityView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

struct EthnicityView: View {
    @ObservedObject var viewModel: AccountCreationViewModel
    
    var ethnicities: [String] = [
    "American Indian",
    "Black/African Descent",
    "East Asian",
    "South Asian",
    "Middle Eastern",
    "Hispanic/Latino",
    "White/Caucasian",
    "Other"
    ]
    
    var enableNext : Bool {
        return !viewModel.ethnicities.isEmpty
    }
    
    var body: some View {
        VStack {
            ForEach(ethnicities, id: \.self) { item in
                SelectableCapsule(title: item, selectedItems: $viewModel.ethnicities)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            }
        }
        .navigationTitle("What are your ethnicities?").navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                NavigationLink(destination: SexualityView(viewModel: viewModel),
                               label: {
                                   Text("Next").padding()
                               })
                .simultaneousGesture(TapGesture().onEnded{
                    Task {
                        await viewModel.updateProfile()
                    }
                })
                .disabled(!enableNext)
        )
    }
}

struct EthnicityView_Previews: PreviewProvider {
    static var previews: some View {
        EthnicityView(viewModel: AccountCreationViewModel())
    }
}
