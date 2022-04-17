//
//  qrView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/17/22.
//

import SwiftUI
import CodeScanner

struct qrView: View {
    
    @State private var history = false
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?
    
    var body: some View {
        
        if (!history) {
            VStack(spacing: 10) {
                
                Button {
                    isPresentingScanner = true
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width:200,height: 100,alignment: .center)
                            .foregroundColor(Color.myTheme.GreenColor)
                        Text("Scan")
                            .foregroundColor(Color.myTheme.BeigeColor)
                            .padding()
                    }
                    
                }

                Text("Scan the Kiosk QR Code to link your account")
                }
            .sheet(isPresented: $isPresentingScanner) {
                CodeScannerView(codeTypes: [.qr], simulatedData: "Paul Hudson") { response in
                    DispatchQueue.main.asyncAfter(deadline: .now()+5) {
                        isPresentingScanner = false
                        }
                    if case let .success(result) = response {
                        history = true;
                        scannedCode = result.string
                        print(scannedCode!)
                        let x = qrService()
                        x.postRFID(rfid: scannedCode!)
                        isPresentingScanner = false
                    }
                }
            }
        }
        
        else {
            
            VStack {
                Image("checkmark")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                
                Text("You have verified yourself at a Lockr Kiosk.\n\nPlease contact Customer Support if you think that is an error")
                    .padding(.leading)
                    .padding(.trailing)
                    .frame(width: 300, height: 200, alignment: .leading)
                
            }
            
            
        }
        
        
        
    }
}

struct qrView_Previews: PreviewProvider {
    static var previews: some View {
        qrView()
    }
}
