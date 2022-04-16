//
//  lockrPage.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import SwiftUI

struct lockrPage: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                
                Rectangle()
                    .frame(width: 350, height: 250, alignment: .center)
                    .foregroundColor(Color.myTheme.GreenColor)
                    .cornerRadius(15)
                
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
                    ButtonView(buttonText: "Reserve")
                    Spacer()
                    ButtonView(buttonText: "Unlock")
                }
                .padding()
                
            }
        })
            .navigationBarTitle("Unlock your locker")
            .navigationBarTitleDisplayMode(.large)
        
    }
        
}

struct lockrPage_Previews: PreviewProvider {
    static var previews: some View {
        lockrPage()
    }
}
