//
//  UserModel.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import Foundation
import SwiftUI

struct UserModel: Identifiable, Hashable, Encodable {
    
    var id = UUID()
    var userID: String // User ID from database
    var username: String 
    //var fullname: String
    var bruinCard: String
    //var isAdmin: Bool
    //var currentlyRenting: Bool
    //var currentRentalBox: String? // Locker ID from database
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
