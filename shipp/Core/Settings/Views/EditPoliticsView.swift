//
//  EditPoliticsView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/26/23.
//

import SwiftUI

struct EditPoliticsView: View {
    @Binding var selectedPolitics: Set<String>
    var politics: [String] = [
    "Liberal",
    "Moderate",
    "Conservative",
    "Nonpolitical",
    "Prefer not to say"
    ]
    
    func savePolitics() async {
        //TODO: Show warning if did not select an option
        if selectedPolitics.isEmpty { return }
    }
        
    var body: some View {
        VStack {
            ForEach(politics, id: \.self) { item in
                SelectableCapsule(title: item, selectedItems: $selectedPolitics, multiSelect: false)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
            }
        }
        .navigationTitle("What is your political stance?").navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing:
                Button("Save", action: {
                    Task {
                        await savePolitics()
                    }
                })
        )
    }
}

struct EditPoliticsView_Previews: PreviewProvider {
    static var previews: some View {
        EditPoliticsView(selectedPolitics: .constant(Set(["Liberal"])))
    }
}
