//
//  ContentView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/15/22.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
    @EnvironmentObject var loggedin: ExampleUser
    @State var display: Bool = false
    
    var body: some View {
        
        ZStack {
                
            if (display) {
                
                TabView {
                    
                    NavigationView {
                        let alan = IdentifiablePlace(lat:37.3349, long: -122.0090201)
                        mapView(place: alan)
                    }
                        .tabItem {
                            Image(systemName: "map")
                            Text("Locate")
                        }
                    
                    NavigationView {
                        lockrPage(display: $display)
                    }
                        .tabItem {
                            Image(systemName: "lock.rectangle")
                            Text("Booking")
                        }
                    
                    NavigationView {
                        searchView()
                    }
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                    
                    NavigationView {
                        qrView()
                    }
                        .tabItem {
                            Image(systemName: "qrcode")
                            Text("Kiosk")
                        }
                    
                    NavigationView {
                        settingsView(display: $display)
                    }
                        .tabItem {
                            Image(systemName: "gearshape")
                            Text("Settings")
                        }
                    
                }
            }
            
            else {
                
                SignUpView(display: $display)
                
            }
            
        }
         
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
