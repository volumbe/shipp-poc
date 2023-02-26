//
//  TimeStatus.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/18/23.
//

import SwiftUI

struct MatchStatus: View {
    @Binding var timeRemainingString: String
    @Binding var distanceRemainingFeet: Float
    var body: some View {
        Rectangle()
            .clipShape(RoundedCorners(corner: [.topRight,.topLeft], radii: 100))
            .frame(height: 100)
            .overlay {
                VStack {
                    Text(timeRemainingString)
                    HStack {
                        Text("\(distanceRemainingFeet.clean) ft")
                    }
                }
                .font(.title.weight(.bold))
                .foregroundColor(.white)
            }
    }
}

struct RoundedCorners: Shape {
    var corner : UIRectCorner
    var radii : CGFloat

    func path(in rect : CGRect) -> Path{
        let path = UIBezierPath(
            roundedRect : rect,
            byRoundingCorners: corner,
            cornerRadii: CGSize(
            width: radii, height: radii))

        return Path(path.cgPath)
    }
}

struct MatchStatus_Previews: PreviewProvider {
    static var previews: some View {
        MatchStatus(timeRemainingString: .constant("04:00"), distanceRemainingFeet: .constant(50))
    }
}
