//
//  LocationSearchViewModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/13/23.
//

import Foundation
import MapKit

class LocationSearchViewModel: NSObject, ObservableObject {
    
    //MARK: – Properties
    
    private let searchCompleter = MKLocalSearchCompleter()
    @Published var results = [MKLocalSearchCompletion]()
    @Published var selectedLocation: MKLocalSearchCompletion?
    @Published var selectedLocationCoordinate: CLLocationCoordinate2D?
    
    var queryFragment: String = "Starbucks" {
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }
    
    //MARK: – Lifecycle
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
    
    //MARK: – Helpers
    
    func selectLocation() {
        if results.isEmpty {
            return
        }
              
        // TODO: Go through results and return location closest to both users
        for location in results {
            coordinateSearch(forLocalSearchCompletion: location) { response, error in
                if let error = error {
                    print("DEBUG: Location search failed with error \(error)")
                    return
                }
                
                guard let item = response?.mapItems.first else { return }
                let coordinate = item.placemark.coordinate
                
                
                self.selectedLocationCoordinate = coordinate
                print("DEBUG: Selected Location coordinates \(coordinate)")
            }
        }
        print("DEBUG: \(String(describing: selectedLocation))")
    }
    
    func coordinateSearch(forLocalSearchCompletion localSearch: MKLocalSearchCompletion, completion: @escaping MKLocalSearch.CompletionHandler) {
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = localSearch.title.appending(localSearch.subtitle)
        let search = MKLocalSearch(request: searchRequest)
        
        search.start(completionHandler: completion)
    }
    
}


// MARK: - MKLocalSearchCompleterDelegate
extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
        
    }
}
