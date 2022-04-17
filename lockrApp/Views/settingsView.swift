//
//  settingsView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/17/22.
//

import SwiftUI
import FirebaseAuth
import Firebase
import EasyFirebase

struct settingsView: View {
    
    @Binding var display: Bool
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            Text("Settings")
                .fontWeight(.bold)
            
            GroupBox(label: LabelView(LabelText: "Lockr", LabelImage: "dot.radiowaves.left.and.right"), content: {
                
                HStack(alignment: .center, spacing: 10, content: {
                    Image("lockr")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80, alignment: .center)
                        .cornerRadius(12)
                    Text("Lockr is the future of crowdsourcing. Whenever and wherever you need something, there's a Lockr nearby.")
                        .font(.footnote)
                })
                
            })
                .padding()
            
            GroupBox(label: LabelView(LabelText: "Application", LabelImage: "apps.iphone"), content: {
                
                Button(action: {
                    if let url = URL(string: "https://google.com") {
                        UIApplication.shared.open(url)
                    }
                }, label: {
                    rowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.myTheme.GreenColor)
                })
                
                Button(action: {
                    if let url = URL(string: "https://lahacks.com") {
                        UIApplication.shared.open(url)
                    }
                }, label: {
                    rowView(leftIcon: "folder.fill", text: "LA Hacks", color: Color.myTheme.GreenColor)
                })
                
                Button(action: {
                    if let url = URL(string: "https://lockr.com") {
                        UIApplication.shared.open(url)
                    }
                }, label: {
                    rowView(leftIcon: "globe", text: "lockr.com", color: Color.myTheme.GreenColor)
                })

            })
                .padding()
            
            GroupBox(label: LabelView(LabelText: "Account", LabelImage: "apps.iphone"), content: {
                
                Button(action: {
                    signedIn = false
                    display = false
                    EasyAuth.signOut()
                }, label: {
                    rowView(leftIcon: "arrow.right", text: "Logout", color: Color.myTheme.GreenColor)
                })

            })
                .padding()
            
            GroupBox {
                Text("One man's trash is another man's treasure. \nAll rights reserved\n Lockr Inc. 🐕\n Copyright 2022 ")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity)
            }
            .padding()
            .padding(.bottom,40)
            
            
        })
            
        
    }
}

struct settingsView_Previews: PreviewProvider {
    @State static var display = false;
    static var previews: some View {
        settingsView(display: $display)
    }
}
