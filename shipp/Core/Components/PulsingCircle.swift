//
//  LoadingView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/18/23.
//

import SwiftUI

struct PulsingCircle: View {
    @State var startAnimation = false
    @State var startOuterAnimation = false
    @State var radius : CGFloat? = 30
    @Binding var progressPercent: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .fill(Color.accentColor.opacity(0.5))
                    .frame(width: radius, height: radius)
                    .scaleEffect(startOuterAnimation ? 3.3 : 0)
                    .opacity(startOuterAnimation ? 0 : 1)
                Circle()
                    .fill(Color.accentColor.opacity(0.5))
                    .frame(width: radius, height: radius)
                    .shadow(color: Color.accentColor.opacity(0.07), radius: 5)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .offset(y: geometry.size.height / 6)
        }
        .onAppear {
            updateRadius()
            animateView()
        }
        .onChange(of: progressPercent, perform: { _ in
            updateRadius()
        })
    }
    
    func updateRadius() {
        var additionMultiplier = progressPercent
        if progressPercent > 0.9 {
            additionMultiplier = 0.9
        } else if progressPercent > 0.75{
            additionMultiplier = 0.8
        } else if progressPercent >= 0.5 {
            additionMultiplier = 0.6
        } else if progressPercent > 0.25 {
            additionMultiplier = 0.25
        } else if progressPercent > 0.05 {
            additionMultiplier = 0.1
        }
        let addition = 300 * additionMultiplier
        radius = CGFloat(30 + addition)
    }
    
    func animateView() {
        withAnimation(Animation.linear(duration: 1.7).repeatForever(autoreverses: false)) {
            startAnimation.toggle()
        }
        
        withAnimation(Animation.linear(duration: 1.7).delay(-0.1).repeatForever(autoreverses: false)) {
            startOuterAnimation.toggle()
        }
        
    }
}

struct PulsingCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            PulsingCircle(progressPercent: .constant(0.8))
        }
    }
}
