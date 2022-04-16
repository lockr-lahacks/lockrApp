//
//  signUpView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/15/22.
//

import SwiftUI

struct SignUpView: View {
    
    @State var showOnboarding: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            
            Spacer()
            Image("lockr")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)

            Button(action: {
                showOnboarding.toggle()
            }, label: {
                Text("Sign In / Sign Up".uppercased())
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth:.infinity)
                    .frame(height: 60)
                    .background(Color.myTheme.BeigeColor)
                    .cornerRadius(12.0)
                    .shadow(radius: 12)
            })
                .accentColor(Color.myTheme.GreenColor)
                
                
            Spacer()
            
        })
            .padding(.all,40)
            .background(Color.myTheme.GreenColor)
            .edgesIgnoringSafeArea(.all)
            .fullScreenCover(isPresented: $showOnboarding, content: {
                onboardingView()
            })
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .preferredColorScheme(.light)
    }
}
