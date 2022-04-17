//
//  lockrAppApp.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/15/22.
//

import SwiftUI
import EasyFirebase
import FirebaseAuth

var appUser: ExampleUser = ExampleUser()
var signedIn: Bool = true

@main
struct lockrAppApp: App {
    
    init() {
        @EnvironmentObject var loggedin: ExampleUser
        EasyFirebase.configure()
        signedIn = true
        //EasyAuth.onUserUpdate { user in
        //    guard let user = user as? ExampleUser else { return }
        //    appUser = user
        //}
        
    }
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
    }
    
    func calcy(x: String) -> Bool {
        if (x == "") {
            return false
        }
        return true
    }
    
}
