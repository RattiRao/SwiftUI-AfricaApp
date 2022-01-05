//
//  InsetMapView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 05/01/22.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map.init(coordinateRegion: $mapRegion)
            .frame(height: 256)
            .cornerRadius(12)
            .overlay(alignment: .topTrailing){
                NavigationLink.init(destination: MapView()) {
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }//: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background{
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    }
                }//: NAVIGATION LINK
                .padding(12)
            }
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
