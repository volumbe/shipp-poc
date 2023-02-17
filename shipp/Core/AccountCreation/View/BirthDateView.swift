//
//  BirthDateView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/8/23.
//

import SwiftUI

struct BirthDateView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var viewModel: AccountCreationViewModel
    
    
    var body: some View {
        VStack {
            DatePicker(
                "",
                selection: $viewModel.date,
                in: viewModel.dateRange,
                displayedComponents: [.date]
            )
            .datePickerStyle(.wheel)
            .labelsHidden()
            Spacer()
        }
        .navigationTitle("Birth Date").navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                NavigationLink(destination: EthnicityView(viewModel: self.viewModel),
                               label: {
                                   Text("Next").padding()
                               })
                .simultaneousGesture(TapGesture().onEnded{
                    Task {
                        await viewModel.createProfile()
                    }
                })
        )
    }
}

struct BirthDateView_Previews: PreviewProvider {
    static var previews: some View {
        BirthDateView(viewModel: AccountCreationViewModel())
    }
}
