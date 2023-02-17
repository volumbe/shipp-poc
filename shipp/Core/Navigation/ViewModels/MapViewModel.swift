//
//  MapViewModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/13/23.
//

import MapKit

final class MapViewModel: NSObject, ObservableObject {
    
    public var locationManager = CLLocationManager()
    @Published var userLocation: CLLocation?
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        userLocation = locationManager.location
        print("DEBUG: Started updating location")
    }
    
    func updateUserLocation(_ location: CLLocation) {
        self.userLocation = location
        guard let userLocation = userLocation else { return }
        print("DEBUG: Updated account location \(userLocation)")
    }
    
}

extension MapViewModel: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("DEBUG: Did change authorization")
        switch manager.authorizationStatus {
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
        case .restricted:
            print("DEBUG: Location is restricted due to parental controls")
        case .denied:
            print("DEBUG: Location authorization denied")
        case .authorizedAlways, .authorizedWhenInUse:
            print("DEBUG: Location permission granted")
            manager.startUpdatingLocation()
        @unknown default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            print("DEBUG: No new locations")
            return
        }
        
        updateUserLocation(location)
        
        
        print("DEBUG didUpdateLocations: numberOfLocation: \(locations.count)")
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        if manager.activityType == .automotiveNavigation || locationManager.activityType == .airborne {
            print("DEBUG: Stop checking for location")
            return
        }
        
        locations.forEach { (location) in
            userLocation = location
            print("DEBUG: didUpdateLocations: \(dateFormatter.string(from: location.timestamp)); \(location.coordinate.latitude), \(location.coordinate.longitude)")
//            print("DEBUG: altitude: \(location.altitude)")
//            print("DEBUG: floor?.level: \(location.floor?.level)")
//            print("DEBUG: horizontalAccuracy: \(location.horizontalAccuracy)")
//            print("DEBUG: verticalAccuracy: \(location.verticalAccuracy)")
//            print("DEBUG: speedAccuracy: \(location.speedAccuracy)")
//            print("DEBUG: speed: \(location.speed)")
//            print("DEBUG: timestamp: \(location.timestamp)")
//            print("DEBUG: courseAccuracy: \(location.courseAccuracy)") // 13.4
//            print("DEBUG: course: \(location.course)")
            print("")
        }
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {

        print("DEBUG: didFailWithError \(error.localizedDescription)")
        if let error = error as? CLError, error.code == .denied {
           // Location updates are not authorized.
        // To prevent forever looping of `didFailWithError` callback
            print("Location updates are not authorized")
           return
        }
      }
    
    func locationManagerDidPauseLocationUpdates(_ manager: CLLocationManager) {
        print("DEBUG: Paused location updates")
    }
    
    func locationManagerDidResumeLocationUpdates(_ manager: CLLocationManager) {
        print("DEBUG: Resumed location updates")
    }
    
}
