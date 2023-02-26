//
//  BirthDateView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

struct BirthDateView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var authModel: AuthModel
    @ObservedObject var viewModel: AccountCreationViewModel
    
    
    var body: some View {
        VStack {
            Spacer()
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
        .navigationTitle("What is your birth date?").navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                NavigationLink(destination: EthnicityView(viewModel: self.viewModel),
                               label: {
                                   Text("Next").padding()
                               })
                .simultaneousGesture(TapGesture().onEnded{
                    Task {
                        authModel.accountID = viewModel.accountID
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
