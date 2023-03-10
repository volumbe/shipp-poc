//
//  EthnicityItem.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

struct SelectableCapsule: View {
    var title: String
    @Binding var selectedItems: Set<String>
    var multiSelect: Bool? = true
    
    var isSelected: Bool {
        selectedItems.contains(title)
    }
    
    var body: some View {
        Capsule()
            .stroke(Color.accentColor, lineWidth: 5)
            .overlay {
                Capsule().fill(isSelected ? Color.accentColor : .white)
                    .overlay(Text(title).multilineTextAlignment(.center))
            }
            .frame(width: 125, height: 50)
            .onTapGesture {
                if isSelected {
                    self.selectedItems.remove(title)
                } else {
                    if self.multiSelect == false {
                        self.selectedItems.removeAll()
                    }
                    self.selectedItems.insert(title)
                }
            }
    }
}

struct SelectableCapsule_Previews: PreviewProvider {
    static var previews: some View {
        SelectableCapsule(title: "Prefer not to say", selectedItems: .constant([String()]))
    }
}
