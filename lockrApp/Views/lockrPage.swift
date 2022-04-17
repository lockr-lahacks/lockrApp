//
//  lockrPage.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import SwiftUI
import EasyFirebase
import FirebaseAuth

struct lockrPage: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var display: Bool
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                
                mapView(place: IdentifiablePlace(lat:34.0689, long: -118.4452))
                    .frame(width: 350, height: 250, alignment: .center)
                    .foregroundColor(Color.myTheme.GreenColor)
                    .cornerRadius(15)
                    .padding(.top)
                
                // MARK:
                GroupBox(label: LabelView(LabelText: "Locker 1209B", LabelImage: "lock.rectangle"), content: {
                    
                    HStack(alignment: .center, spacing: 10, content: {
                        Image("umbrella")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .leading)
                            .cornerRadius(12)
                        Spacer()
                        VStack {
                            Text("Description: Umbrella\nPrice: $10 per day\nDeposit: $20 (refundable) ")
                                .font(.footnote)
                        }
                        
                    })
                        .padding()
                    
                })
                    .padding()
                
                
                HStack {
                    Button {
                        //let serv = authService()
                        //serv.postUser()
                        //signedIn = false
                        //display = false
                        //EasyAuth.signOut()
                    } label: {
                        ButtonView(buttonText: "Reserve")
                    }
                    Spacer()
                    Button {
                        print(display)
                    } label: {
                        ButtonView(buttonText: "Unlock")
                    }
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
            }
        })
            .navigationTitle("Confirm your selection")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.title)
                })
                .accentColor(.primary))
        
    }
        
}

struct lockrPage_Previews: PreviewProvider {
    @State static var display = true
    static var previews: some View {
        lockrPage(display: $display)
    }
}
