//
//  LocationModel.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 13/01/22.
//

import Foundation
import CoreLocation

struct LocationModel: Codable, Identifiable{
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
