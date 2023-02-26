//
//  MapBoxMapView.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/21/23.
//

import SwiftUI
import MapboxMaps

struct MapBoxMapView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return MapViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

class MapViewController: UIViewController {
    internal var mapView: MapView!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        let resourceOptions = ResourceOptions(accessToken: "sk.eyJ1Ijoidm9sdW1iZSIsImEiOiJjbGVmMTh3cmEwNm52NDVwbXZlYW12NmI2In0.KMuvhA3f-gzuW-jOZu_Pkg")
        let mapInitOptions = MapInitOptions(resourceOptions: resourceOptions)
        
        mapView = MapView(frame: view.bounds, mapInitOptions: mapInitOptions)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(mapView)
    }
}
