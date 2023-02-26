//
//  EditEthnicityView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/26/23.
//

import SwiftUI

struct EditEthnicityView: View {
    @Binding var selectedEthnicities: Set<String>
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
    
    func saveEthnicities() async {
        //TODO: Show warning if did not select an ethnicity
        if selectedEthnicities.isEmpty { return }
    }
        
    var body: some View {
        VStack {
            ForEach(ethnicities, id: \.self) { item in
                SelectableCapsule(title: item, selectedItems: $selectedEthnicities)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            }
        }
        .navigationTitle("What are your ethnicities?").navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                Button("Save", action: {
                    Task {
                        await saveEthnicities()
                    }
                })
        )
    }
}

struct EditEthnicityView_Previews: PreviewProvider {
    static var previews: some View {
        
        EditEthnicityView(selectedEthnicities: .constant(Set(["East Asian", "South Asian"])))
    }
}
