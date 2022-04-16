//
//  ContentView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            NavigationView {
                SignUpView()
            }
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Sign in / Sign up test")
                }
            
            NavigationView {
                lockrPage()
            }
                .tabItem {
                    Image(systemName: "lock.rectangle")
                    Text("Locker confirmation")
                }
            
        }
        .accentColor(Color.myTheme.BeigeColor)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
