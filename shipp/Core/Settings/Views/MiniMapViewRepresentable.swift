//
//  MiniMapRepresentable.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/13/23.
//

import SwiftUI
import MapKit

struct MiniMapViewRepresentable: UIViewRepresentable {
    let mapView = MKMapView()
    @EnvironmentObject var locationManager: MapViewModel
    @Binding var coordinate : CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = true
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .followWithHeading
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    
    func makeCoordinator() -> MiniMapCoordinator {
        return MiniMapCoordinator(parent: self)
    }
}

extension MiniMapViewRepresentable {
    class MiniMapCoordinator: NSObject, MKMapViewDelegate, UIGestureRecognizerDelegate {
        
        //MARK: – Properties
        
        let parent: MiniMapViewRepresentable
        var userLocationCoordinate: CLLocationCoordinate2D?
        var gestureRecognizer = UITapGestureRecognizer()
        //MARK: – Lifecycle
        
        init(parent: MiniMapViewRepresentable) {
            self.parent = parent
            super.init()
            self.gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
            self.gestureRecognizer.delegate = self
            self.parent.mapView.addGestureRecognizer(gestureRecognizer)
        }
        
        //MARK: - MKMapViewDelegate
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            userLocationCoordinate = userLocation.coordinate
            let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
            let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
//            let region = MKCoordinateRegion(center: center, span: span)
//
//            parent.mapView.setRegion(region, animated: true)
            parent.mapView.showAnnotations(parent.mapView.annotations, animated: true)
        }
        
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            let overlayRenderer = MKPolylineRenderer(overlay: overlay)
            overlayRenderer.strokeColor = .systemBlue
            overlayRenderer.lineWidth = 3
            
            return overlayRenderer
        }
        
        //MARK: - UIGestureRecognizerDelegate
        
        @objc func tapHandler(_ gesture: UITapGestureRecognizer) {
            // position on the screen, CGPoint
            let location = gestureRecognizer.location(in: self.parent.mapView)
            // position on the map, CLLocationCoordinate2D
    
            let coordinate = self.parent.mapView.convert(location, toCoordinateFrom: self.parent.mapView)
            addAndSelectAnnotation(withCoordinate: coordinate)
        }
        
        
        //MARK: - Helpers
        
        func addAndSelectAnnotation(withCoordinate coordinate: CLLocationCoordinate2D) {
            parent.mapView.removeAnnotations(parent.mapView.annotations)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            parent.coordinate = coordinate
            
            parent.mapView.addAnnotation(annotation)
            parent.mapView.selectAnnotation(annotation, animated: true)
        }
        
        
        func mapView(_ mapView: MKMapView, didFailToLocateUserWithError error: Error) {
            print("ERROR: Failed to locate user")
        }
        
    }
}
