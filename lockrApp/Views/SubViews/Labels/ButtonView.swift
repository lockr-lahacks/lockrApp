//
//  ButtonView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import SwiftUI

struct ButtonView: View {
    
    var buttonText: String
    var body: some View {
    
        ZStack {
            Rectangle()
                .frame(width: 150, height: 50, alignment: .center)
                .cornerRadius(15)
            .foregroundColor(Color.myTheme.GreenColor)
            Text(buttonText)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonText: "Sign Up" )
            .previewLayout(.sizeThatFits)
            
    }
}
