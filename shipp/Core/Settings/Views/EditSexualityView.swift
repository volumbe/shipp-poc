//
//  EditSexualityView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/26/23.
//

import SwiftUI

struct EditSexualityView: View {
    @Binding var selectedSexuality: Set<String>
    var people: [String] = [
    "Men",
    "Women",
    "Everyone"
    ]
    
    func saveSexuality() async {
        //TODO: Show warning if did not select an option
        if selectedSexuality.isEmpty { return }
    }
        
    var body: some View {
        VStack {
            ForEach(people, id: \.self) { item in
                SelectableCapsule(title: item, selectedItems: $selectedSexuality, multiSelect: false)
            }
        }
        .navigationTitle("Who do you want to see?").navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                Button("Save", action: {
                    Task {
                        await saveSexuality()
                    }
                })
        )
    }
}

struct EditSexualityView_Previews: PreviewProvider {
    static var previews: some View {
        EditSexualityView(selectedSexuality: .constant(Set(["Everyone"])))
    }
}
