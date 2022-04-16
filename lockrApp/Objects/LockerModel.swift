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
    var userID: String // User ID from database
    var username: String
    var fullname: String
    var isAdmin: Bool
    var currentlyRenting: Bool
    var currentRentalBox: String? // Box ID from database
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
