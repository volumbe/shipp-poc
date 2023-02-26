//
//  Prompt.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/14/23.
//

import SwiftUI

struct EditablePrompt: View {
    var title: String
    @Binding var response: String {
        didSet {
            self.response = String(self.response.prefix(150))
        }
    }
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .bold()
            TextField("Enter a response", text: $response)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.gray, lineWidth: 1)
        )
        .padding(.bottom)
        .padding(.horizontal)
    }
}

struct EditablePrompt_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            EditablePrompt(title: "A shower thought I recently had", response: .constant("What if you and I shared our thoughts in the shower together"))
            EditablePrompt(title: "A shower thought I recently had", response: .constant("What if you and I shared our thoughts in the shower together"))
        }
    }
}
