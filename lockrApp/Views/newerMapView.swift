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
    let btn = UIButton(type: .detailDisclosure)
    
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
                
                ZStack
                {
                    Image(systemName: "archivebox")
                        .scaleEffect(2)
                }
                
            }
        }
        
    }
    

}



let ident1 = IdentifiablePlace(lat: 34.0689, long: -118.4452)
let ident2 = IdentifiablePlace(lat: 34.07, long: -118.45)

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView(place: ident1)
    }
}

