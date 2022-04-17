//
//  UserModel.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import Foundation
import SwiftUI

struct UserModel: Identifiable, Hashable, Encodable, Decodable {
    
    var id = UUID()
    var userID: String // User ID from database
    var username: String
    var email: String
    var rfidtag: String?
    var userType: Int // 0 normal user, 1 lender, 2 admin
    var objectRenting: String? // Locker ID from database
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
