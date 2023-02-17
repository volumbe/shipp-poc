////
////  LocationManager.swift
////  shipp
////
////  Created by Vivek Olumbe on 1/11/23.
////
//
//import CoreLocation
//
//class LocationManager: NSObject, ObservableObject {
//    private let locationManager = CLLocationManager()
//    @Published var userLocation: CLLocation?
//    
//    override init() {
//        super.init()
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
//    }
//    
//    func requestLocation() {
//        locationManager.requestWhenInUseAuthorization()
//    }
//}
//
//
//extension LocationManager: CLLocationManagerDelegate {
//    
//    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
//        print("Authorization status \(locationManager.authorizationStatus)")
//        switch locationManager.authorizationStatus {
//        case .notDetermined:
//            manager.requestLocation()
//        case .restricted:
//            print("DEBUG: Restricted")
//        case .denied:
//            print("DEBUG: Denied")
//        case .authorizedAlways:
//            manager.requestLocation()
//        case .authorizedWhenInUse:
//            manager.requestLocation()
//        }
//    }
//        
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard locations.isEmpty else {
//            print("DEBUG: No new locations")
//            return
//        }
//        print("LocationManager didUpdateLocations: numberOfLocation: \(locations.count)")
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//        
//        if locationManager.activityType == .automotiveNavigation || locationManager.activityType == .airborne {
//            print("DEBUG: Stop checking for location")
//            return
//        }
//        
//        locations.forEach { (location) in
//            userLocation = location
//            print("DEBUG: didUpdateLocations: \(dateFormatter.string(from: location.timestamp)); \(location.coordinate.latitude), \(location.coordinate.longitude)")
//            print("DEBUG: altitude: \(location.altitude)")
//            print("DEBUG: floor?.level: \(location.floor?.level)")
//            print("DEBUG: horizontalAccuracy: \(location.horizontalAccuracy)")
//            print("DEBUG: verticalAccuracy: \(location.verticalAccuracy)")
//            print("DEBUG: speedAccuracy: \(location.speedAccuracy)")
//            print("DEBUG: speed: \(location.speed)")
//            print("DEBUG: timestamp: \(location.timestamp)")
//            print("DEBUG: courseAccuracy: \(location.courseAccuracy)") // 13.4
//            print("DEBUG: course: \(location.course)")
//            print("")
//        }
//    }
//    
//    
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print("DEBUG: didFailWithError \(error.localizedDescription)")
//        if let error = error as? CLError, error.code == .denied {
//           // Location updates are not authorized.
//        // To prevent forever looping of `didFailWithError` callback
//            print("Location updates are not authorized")
//            locationManager.stopMonitoringSignificantLocationChanges()
//           return
//        }
//      }
//}
//
