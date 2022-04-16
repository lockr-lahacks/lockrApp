//
//  congratsView.swift
//  lockrApp
//
//  Created by Alan Yu on 4/16/22.
//

import SwiftUI

struct congratsView: View {
    var body: some View {
        
        ZStack {
            
            Color.myTheme.GreenColor
                .ignoresSafeArea()
           
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(15)
                    .frame(width: 375, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1))).multilineTextAlignment(.center)
            VStack{
                Text("Congratulations!").font(.custom("Inter Semi Bold", size: 30)).multilineTextAlignment(.center)
                    .padding(5)
                //You have successfully retu...
                Text("You have successfully returned the item to the lockr ").font(.custom("Inter Medium", size: 16))
                    .frame(width: 350)
                Rectangle()
                    .fill(Color.blue)
                    .cornerRadius(10)
                    .frame(width: 200, height: 50)
                    
            }
        }
        
        
    }
}

struct congratsView_Previews: PreviewProvider {
    static var previews: some View {
        congratsView()
    }
}
