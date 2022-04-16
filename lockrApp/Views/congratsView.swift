//
//  congratsView.swift
//  lockrApp
//
//  Created by Alan Yu on 4/16/22.
//

import SwiftUI

struct congratsView: View {
    var body: some View {
        VStack {
            Color.myTheme.GreenColor
                .ignoresSafeArea()
            Rectangle()
                .fill(Color.white)
                .frame(width: 350, height: 400)
                .cornerRadius(15)
            Text("Congratulations!").font(.custom("Inter Semi Bold", size: 30)).multilineTextAlignment(.center)
            //You have successfully retu...
            Text("You have successfully returned the item to the lockr ").font(.custom("Inter Medium", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1))).multilineTextAlignment(.center)

        }
        
        
    }
}

struct congratsView_Previews: PreviewProvider {
    static var previews: some View {
        congratsView()
    }
}
