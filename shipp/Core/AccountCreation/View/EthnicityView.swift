//
//  EthnicityView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/8/23.
//

import SwiftUI

struct EthnicityView: View {
    @ObservedObject var viewModel: AccountCreationViewModel
    
    var ethnicities: [String] = [
    "Black",
    "White",
    "Green",
    "Blue",
    "Yellow"
    ]
    
    var enableNext : Bool {
        return !viewModel.ethnicities.isEmpty
    }
    
    var body: some View {
        VStack {
            ForEach(ethnicities, id: \.self) { item in
                SelectableCapsule(title: item, selectedItems: $viewModel.ethnicities)
            }
            Spacer()
        }
        .navigationTitle("Ethnicity").navigationBarTitleDisplayMode(.inline)
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
