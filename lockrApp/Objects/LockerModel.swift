//
//  LockerModel.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import Foundation
import SwiftUI


struct LockerModel: Identifiable, Hashable {
    
    var id = UUID()
    var lockerID: String // Locker ID from database
    var lockerName: String
    var latitude: Float
    var longitude: Float
    var object: String
    var price: Float
    
    
    var currentlyRenting: Bool
    var currentRentalBox: String? // Box ID from database
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
