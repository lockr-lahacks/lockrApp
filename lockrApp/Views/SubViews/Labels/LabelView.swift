//
//  LabelView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import Foundation
import SwiftUI

struct LabelView: View {
    
    var LabelText: String
    var LabelImage: String
    
    var body: some View {
        VStack {
            
            HStack {
                Text(LabelText)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: LabelImage)
            }
            Divider()
                .padding(.vertical,4)
            
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(LabelText: "Test Label", LabelImage: "heart")
            .previewLayout(.sizeThatFits)
    }
}
