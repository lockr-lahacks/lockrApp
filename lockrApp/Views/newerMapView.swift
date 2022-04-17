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
    
    @State private var showingGame = false
    @Environment(\.presentationMode) var presentationMode
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.0689,
            longitude: -118.4452
        ),
        latitudinalMeters: 2000,
        longitudinalMeters: 2000
    )
    


    let url = URL(string: "maps://?saddr=&daddr=\(34.0689),\(-118.4452)")
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region,
                annotationItems: [place])
            {
                
                place in MapAnnotation(coordinate: place.location)
                {
                    
                    Button{
                        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                    }label:{
                        Image(systemName: "lock.shield")
                            .scaleEffect(3)
                    }
                
                }
            }
            
            /*
            if (showingGame) {
                
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(30)
                        .frame(width: 375, height: 150)
                        .offset(x: 0, y: 250)
                        Button{
                            
                        }label:{
                            /*
                            Rectangle()
                                .fill(Color.blue)
                                .cornerRadius(30)
                                .offset(x: -100, y: 250)
                                .frame(width: 170, height: 90)
                            */
                            /*
                            Text("Directions: ")
                                .position(x: 50, y: 500)
                            Image(systemName: "car.fill")
                                .scaleEffect(3)
                                .position(x: -150, y: 550)
                             */
                            
                    }
                
                }
             
                
                
            }
             */
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

