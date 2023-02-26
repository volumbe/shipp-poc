//
//  NearbyNavigationView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/18/23.
//

import SwiftUI

struct NearbyNavigationView: View {
    @EnvironmentObject var viewModel: NavigationViewModel
    @EnvironmentObject var matchModel: MatchModel
    @EnvironmentObject var locationManager: LocationManager
    @Binding var meetupProgress : Float    // In percent
    var body: some View {
        PulsingCircle(progressPercent: $meetupProgress)
    }
}

struct NearbyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NearbyNavigationView(meetupProgress: .constant(0.8))
    }
}
