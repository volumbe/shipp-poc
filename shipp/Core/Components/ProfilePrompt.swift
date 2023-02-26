//
//  ProfilePrompt.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/20/23.
//

import SwiftUI

struct ProfilePrompt: View {
    var startRight = false
    var title: String?
    var response: String?
    var opacity = 1.0

    var body: some View {
        CurvedRectangle(startRight: startRight)
            .opacity(opacity)
            .overlay(alignment: startRight ? .topTrailing : .topLeading) {
                VStack(alignment: startRight ? .trailing : .leading) {
                    Text(title ?? "")
                        .font(.headline.weight(Font.Weight.medium))
                        .frame(maxWidth: .infinity, alignment: startRight ? .trailing : .leading)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
                    Text(response ?? "")
                        .font(.headline.weight(Font.Weight.light))
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: startRight ? .trailing : .leading)
                .multilineTextAlignment(startRight ? .trailing : .leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: 300)
                .padding(.vertical)
            }
            .transition(AnyTransition.move(edge: startRight ? .trailing : .leading))
            .onAppear {
                withAnimation(.easeIn(duration: 1)) {
                    
                }
            }
    
    }
}

struct ProfilePrompt_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ProfilePrompt(title: "I go crazy for", response: "What if we")
            ProfilePrompt(startRight: true, title: "I go crazy for", response: "What if we all live in a simulation that is run by pirates from the 1700s and so")
            ProfilePrompt(startRight: false, title: "I go crazy for", response: "What if we all live in a simulation that is run by pirates from the 1700s and they want to see how long till we become")
            Spacer()
        }
    }
}
