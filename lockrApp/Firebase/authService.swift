//
//  authService.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import Firebase
import FirebaseDatabase
import FirebaseAuth
import EasyFirebase

private var databasePath: DatabaseReference? = {
    
      guard let uid = Auth.auth().currentUser?.uid else {
        return nil
      }
    
    let ref = Database.database()
        .reference()
        .child("users/\(uid)/test")
    
    return ref
    
}()

private let encoder = JSONEncoder()

class authService {
    
    func postUser() {
        
        guard let databasePath = databasePath else {
          return
        }
        
        let user = UserModel(userID: "abc", username: "matthew", rfidtag: "69420")
        do {
          // 4
          let data = try encoder.encode(user)

          // 5
          let json = try JSONSerialization.jsonObject(with: data)

          // 6
          databasePath.childByAutoId()
            .setValue(json)
        } catch {
          print("an error occurred", error)
        }
        
        
    }
    
}




