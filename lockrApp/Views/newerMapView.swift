//
//  mapView.swift
//  lockrApp
//
//  Created by Alan Yu on 4/16/22.
//

import SwiftUI
import MapKit
import CoreLocation

struct IdentifiablePlace: Identifiable{
    let id: UUID
    let location: CLLocationCoordinate2D
    init(id: UUID = UUID(), lat: Double, long: Double)
    {
        self.id = id
        self.location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long
        )
    }
}


public struct SomeImage: Codable {

    public let photo: Data
    
    public init(photo: UIImage) {
        self.photo = photo.pngData()!
    }
}

struct mapView: View {
    let place: IdentifiablePlace

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.0689,
            longitude: -118.4452
        ),
        latitudinalMeters: 2000,
        longitudinalMeters: 2000
    )
    

    var body: some View {
        Map(coordinateRegion: $region,
        annotationItems: [place])
        {
            place in MapAnnotation(coordinate: place.location)
            {
                Rectangle().stroke(Color.red)
                    .frame(width: 5, height: 5)
            }
        }
    }
}

let ident = IdentifiablePlace(lat: 34.0689, long: -118.4452)

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView(place: ident)
    }
}

