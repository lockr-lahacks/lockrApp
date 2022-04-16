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
    
    @State var displayName: String = ""
    @State var email: String = ""
    @State var provider: String = ""
    @State var providerID: String = ""
    
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
                EasyAuth.signInWithApple()
            }, label: {
                SignInWithAppleButtonCustom()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
            })
            
            // MARK: Sign in with Google
            
            
            Button(action: {
                EasyAuth.signInWithGoogle(clientID: "602394534485-m7rql5r7jau826gh2098omh788rqlar0")
                
                //googleSignIn()
                //showOnboardingPart2.toggle()
                
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
        /*
        .fullScreenCover(isPresented: $showOnboardingPart2, onDismiss: {
            self.presentationMode.wrappedValue.dismiss()
        }, content: {
            OnboardingAccountView(displayName: $displayName, email: $email, provider: $provider, providerID: $providerID)
        })
         */
        .alert(isPresented: $showError, content: {
            return Alert(title: Text("Error Signing In 🥲"))
        })
        
    }
    
}

struct onboardingView_Previews: PreviewProvider {
    static var previews: some View {
        onboardingView()
    }
}
