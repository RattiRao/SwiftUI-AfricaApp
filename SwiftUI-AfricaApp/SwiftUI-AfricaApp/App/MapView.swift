//
//  MapView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 29/12/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        let coordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let zoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        let region = MKCoordinateRegion(center: coordinate, span: zoomLevel)
        
        return region
    }()
    
    let arrLocations: [LocationModel] = Bundle.main.decode("locations.json")
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: arrLocations) { item in
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
                 
            }//: ANNOTATION
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
