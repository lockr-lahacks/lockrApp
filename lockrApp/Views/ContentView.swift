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
                        SignUpView(display: $display)
                    }
                        .tabItem {
                            Image(systemName: "book.fill")
                            Text("Sign in / Sign up test")
                        }
                    
                    NavigationView {
                        lockrPage(display: $display)
                    }
                        .tabItem {
                            Image(systemName: "lock.rectangle")
                            Text("Locker confirmation")
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
