//
//  CurvedRectangle.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/20/23.
//

import SwiftUI

struct CurvedRectangle: View {
    var startRight = false
    var body: some View {
        ZStack {
            Capsule()
                .fill(Color.accentColor)
                .frame(width: .infinity, height: 130)
                .offset(x: startRight ? 75 : -75)
            PromptArc()
                .fill(Color.accentColor)
                .frame(width: .infinity, height: 130)
                .offset(x: startRight ? 175 : -75)
        }
    }
}

struct PromptArc: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = rect.maxY / 2
        let controlCenter = CGPoint(x: rect.maxX - radius, y: rect.midY)
        let topLeftCorner = CGPoint(x: rect.minX, y: rect.minY)
        let topRightCorner = CGPoint(x: rect.maxX - radius, y: rect.minY)
        let bottomLeftCorner = CGPoint(x: rect.minX, y: rect.maxY)
        let bottomRightCorner = CGPoint(x: rect.maxX - radius, y: rect.maxY)
        
        path.move(to: topLeftCorner)
        path.addLine(to: topRightCorner)
        path.addLine(to: bottomRightCorner)
        path.addLine(to: bottomLeftCorner)
        path.addLine(to: topLeftCorner)
        path.move(to: CGPoint(x: rect.maxX - radius, y: rect.midY))
        path.addArc(center: controlCenter, radius: radius, startAngle: .degrees(90), endAngle: .degrees(-90), clockwise: true)
        return path
    }
}

struct CurvedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CurvedRectangle()
            CurvedRectangle(startRight: true)
        }
    }
}

