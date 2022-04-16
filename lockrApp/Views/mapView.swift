//
//  mapView.swift
//  lockrApp
//
//  Created by Alan Yu on 4/16/22.
//

import SwiftUI
import MapKit


import MapKit
import SwiftUI

struct mapView: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: MapDefaults.latitude, longitude: MapDefaults.longitude),
        span: MKCoordinateSpan(latitudeDelta: CLLocationDegrees(MapDefaults.zoom), longitudeDelta: CLLocationDegrees(MapDefaults.zoom)))
        
    private enum MapDefaults {
        static let latitude = 34.068920
        static let longitude = -118.445183
        static let zoom = 0.03
    }

    var body: some View {
        
        var annotationItems: [MyAnnotationItem] = [
                MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 34.068920, longitude: -118.445183)),
                MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 37.786996, longitude: -122.419281)),
            ]

        
        VStack {
            /*
            Text("lat: \(region.center.latitude), long: \(region.center.longitude). Zoom: \(region.span.latitudeDelta)")
             
            .font(.caption)
            .padding()
             */
            Map(coordinateRegion: $region,
                annotationItems: annotationItems) {item in
                MapPin(coordinate: item.coordinate)
            }
        }
        
    }
    
    
}

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
    
    
}

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView()
    }
}
