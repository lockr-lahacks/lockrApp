//
//  userConfig.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import Foundation
import EasyFirebase

class ExampleUser: EasyUser, ObservableObject {
    
    required init() {
        super.init()
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
    
}
