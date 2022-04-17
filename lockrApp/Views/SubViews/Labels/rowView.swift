//
//  rowView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/17/22.
//

import SwiftUI

struct rowView: View {
    
    var leftIcon: String
    var text: String
    var color: Color
    
    var body: some View {
        
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(color)
                Image(systemName: leftIcon)
                    .font(.title3)
                    .foregroundColor(.white)
            }
            .frame(width: 36, height: 36)
            
            Text(text)
                .foregroundColor(.primary)
                .fontWeight(.bold)
                
            
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.primary)
                .font(.headline)
                
        }
        .padding(.all,4)
        
    }
}

struct rowView_Previews: PreviewProvider {
    static var previews: some View {
        rowView(leftIcon: "heart.fill", text: "Title", color: Color.myTheme.GreenColor)
    }
}
