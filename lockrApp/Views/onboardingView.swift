//
//  onboardingView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/15/22.
//

import SwiftUI
import Firebase
import EasyFirebase

struct onboardingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var showOnboardingPart2: Bool = false
    @State var showError: Bool = false
    @Binding var display: Bool
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            Image("lockr")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
                .shadow(radius: 10)

            
            Text("Welcome to the future of crowdsharing items.")
                .font(.headline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.myTheme.PurpleColor)
                .padding()
            
            
            // MARK: Sign in with Apple
            Button(action: {
                signedIn = true
                EasyAuth.signInWithApple()
                display = true
                presentationMode.wrappedValue.dismiss()
            }, label: {
                SignInWithAppleButtonCustom()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
            })
            
            // MARK: Sign in with Google
            
            
            Button(action: {
                signedIn = true
                display = true
                EasyAuth.signInWithGoogle(clientID: "602394534485-m7rql5r7jau826gh2098omh788rqlar0") { error in
                    if let error = error {
                        display = false
                        print(error.localizedDescription)
                        print("Error")
                      } else {
                        print("Success")
                        print("Success")
                        print("Success")
                        print("Success")
                      }
                   
                }
                //googleSignIn()
                //showOnboardingPart2.toggle()
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                /*
                 Image("signInWithGoogle")
                 .resizable()
                 .frame(height:70)
                 .frame(maxWidth: .infinity)
                 */
                HStack {
                    Image(systemName: "globe")
                    Text("Sign in with Google")
                }
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color(.sRGB, red: 222/255, green: 82/255, blue: 70/255, opacity: 1.0))
                .cornerRadius(6)
                .font(.system(size: 22, weight: .medium, design: .default))
            })
                .accentColor(Color.white)
            
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Text("Sign in later".uppercased())
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding()
            })
                .accentColor(.black)
            
            
        }
        .padding(.all,20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.myTheme.BeigeColor)
        .edgesIgnoringSafeArea(.all)
        
        .fullScreenCover(isPresented: $showOnboardingPart2, onDismiss: {
            self.presentationMode.wrappedValue.dismiss()
        }, content: {
            //
        })
        .alert(isPresented: $showError, content: {
            return Alert(title: Text("Error Signing In 🥲"))
        })
        
    }
    
}

struct onboardingView_Previews: PreviewProvider {
    @State static var display = true
    static var previews: some View {
        onboardingView(display: $display)
    }
}
