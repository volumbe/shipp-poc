//
//  SexualityView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

struct SexualityView: View {
    @ObservedObject var viewModel: AccountCreationViewModel
    var people: [String] = [
    "Men",
    "Women",
    "Everyone"
    ]
    @State var selectedSexuality = Set<String>()
    
    var enableNext : Bool {
        return !selectedSexuality.isEmpty
    }
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                ForEach(people, id: \.self) { item in
                    SelectableCapsule(title: item, selectedItems: $selectedSexuality, multiSelect: false)
                }
            }
            Spacer()
        }
        .navigationTitle("Who do you want to match with?").navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                NavigationLink(destination: PoliticsView(viewModel: viewModel),
                               label: {
                                   Text("Next").padding()
                               })
                .simultaneousGesture(TapGesture().onEnded{
                    Task {
                        if let selection = selectedSexuality.first {
                            viewModel.sexuality = selection
                        }
                        await viewModel.updateProfile()
                    }
                })
                .disabled(!enableNext)
        )
    }
}

struct SexualityView_Previews: PreviewProvider {
    static var previews: some View {
        SexualityView(viewModel: AccountCreationViewModel())
    }
}
