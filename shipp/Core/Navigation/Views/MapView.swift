//
//  MapView.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/13/23.
//

import MapKit
import SwiftUI

struct MapView: View {
    @EnvironmentObject var accountModel: AccountModel
    @StateObject var mapViewModel = MapViewModel()
    @StateObject var searchViewModel = LocationSearchViewModel()
    @State private var mapState = MapViewState.noInput
    
    var body: some View {
        MapViewRepresentable()
            .ignoresSafeArea()
            .environmentObject(mapViewModel)
            .environmentObject(searchViewModel)
            .onTapGesture {
                searchViewModel.selectLocation()
            }
            .onChange(of: mapViewModel.userLocation ?? CLLocation()) { newLocation in
                Task {
                    await accountModel.updateLocation(newLocation)
                }
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(mapViewModel: MapViewModel())
    }
}
