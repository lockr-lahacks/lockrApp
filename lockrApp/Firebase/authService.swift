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
        .child("users/\(uid)")
    
    return ref
    
}()

private let encoder = JSONEncoder()

private let decoder = JSONDecoder()

class authService {
    
    func postUser() {
        
        guard let databasePath = databasePath else {
          return
        }
        
        let user = UserModel(userID: "abc", username: "matthew", email: "hello@gmail.com", rfidtag: "69420",  userType: 0, objectRenting: nil)
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
    
    func postUser(userID: String, username: String, email: String, rfidtag: String?, userType: Int, objectRenting: String?) {
        
        guard let databasePath = databasePath else {
          return
        }
        
        let user = UserModel(userID: userID, username: username, email: email, userType: userType, objectRenting: objectRenting)
        do {
          // 4
          let data = try encoder.encode(user)

          // 5
          let json = try JSONSerialization.jsonObject(with: data)

          // 6
          databasePath
            .setValue(json)
        } catch {
          print("an error occurred", error)
        }
        
    }
    
    func getSize() -> Bool {
        
        guard var databasePath = databasePath else {
          return false
        }
        
        databasePath = Database.database().reference().child("users")
        
        guard let uid = Auth.auth().currentUser?.uid else {
          return false
        }
        
        
        /*
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            
            databasePath.observeSingleEvent(of: DataEventType.value) { snapshot in
                if snapshot.hasChild("/\(uid)") {
                    print("EXISTS")
                    retur = true
                }
                else {
                    print("EXTINCT")
                }
            }
            
        }
        */
        
        return true
        
        }
    
    
}




