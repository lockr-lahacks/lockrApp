//
//  lockrPage.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/16/22.
//

import SwiftUI

struct lockrPage: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                
                Rectangle()
                    .frame(width: 350, height: 250, alignment: .center)
                    .foregroundColor(Color.myTheme.GreenColor)
                    .cornerRadius(15)
                    .padding(.top)
                
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
                    Button {
                        let serv = authService()
                        serv.postUser()
                    } label: {
                        ButtonView(buttonText: "Reserve")
                    }
                    Spacer()
                    ButtonView(buttonText: "Unlock")
                }
                .padding(.leading)
                .padding(.trailing)
                
            }
        })
            .navigationTitle("You're almost there")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.title)
                })
                .accentColor(.primary))
        
    }
        
}

struct lockrPage_Previews: PreviewProvider {
    static var previews: some View {
        lockrPage()
    }
}
