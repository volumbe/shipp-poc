//
//  Prompt.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/18/23.
//

import SwiftUI

struct EditPrompt: View {
    static var prompts: [String] = [
        "Unusual skills",
        "My greatest strength",
        "I'm convinced that",
        "In my free time",
        "Favorite artists",
        "Ask me about",
        "One thing you should know about me",
        "This weekend I am"
    ]
    
    @Binding var prompt: Prompt
    @State var editable = true
    
    @State var selectedPrompt: String?
    @Binding var answeredPrompts: Set<String>
    
    @State var response: String = "" {
        didSet {
            self.response = String(self.response.prefix(150))
        }
    }
    
    @State var availablePrompts: [String] = Array(EditPrompt.prompts)
    @State private var showingPrompts = false
    var body: some View {
        VStack {
            HStack {
                Text(selectedPrompt ?? "Select a prompt")
                    .font(.headline)
                    .onTapGesture {
                        if editable {
                            showingPrompts = true
                        }
                    }
                Image(systemName: "square.and.pencil")
            }
            Divider()
            TextEditor(text: $response)
                .frame(height: 50)
                .disabled(selectedPrompt == nil || editable == false)
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(style: StrokeStyle(lineWidth: 1))
                .padding()
        }
        .sheet(isPresented: $showingPrompts, onDismiss: {
            
        }) {
            VStack {
                List(selection: $selectedPrompt) {
                    Section {
                        ForEach(availablePrompts, id: \.self) { prompt in
                            Text(prompt)
                                .onTapGesture {
                                    selectedPrompt = prompt
                                    showingPrompts = false
                                }
                        }
                    } header: {
                        Text("Select a prompt").font(.headline)
                    }
                }
            }
        }
        .onAppear {
            if !prompt.title.trim().isEmpty {selectedPrompt = prompt.title }
            if !prompt.response.trim().isEmpty { response = prompt.response }

            availablePrompts.removeAll( where: { answeredPrompts.contains($0) })
        }
    }
}
