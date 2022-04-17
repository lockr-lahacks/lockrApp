//
//  qrService.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/17/22.
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
        .child("userRfids/")
    
    return ref
    
}()

private let encoder = JSONEncoder()

private let decoder = JSONDecoder()

class qrService {
    
    func postRFID(rfid: String) {
        
        guard let databasePath = databasePath else {
          return
        }
        
        guard let uid = Auth.auth().currentUser?.uid else {
          return
        }
        
        databasePath.setValue([rfid:uid])
        
        /*
        let jsonobject: NSMutableDictionary = NSMutableDictionary()
        jsonobject.setValue(uid, forKey: rfid)
        
        print("Hi I'm here")
        
        do {
            let jsonData: NSData = try JSONSerialization.data(withJSONObject: jsonobject, options: JSONSerialization.WritingOptions.prettyPrinted) as NSData
            
        } catch {
          print("an error occurred", error)
        }
        */
    
         
        
        
    }
    

}
