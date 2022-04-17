//
//  qrView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/17/22.
//

import SwiftUI
import CodeScanner

struct qrView: View {
    
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?
    
    var body: some View {
        VStack(spacing: 10) {
            if let code = scannedCode {
                //
            }

            Button("Scan Code") {
                isPresentingScanner = true
            }

            Text("Scan a QR code to begin")
            }
        .sheet(isPresented: $isPresentingScanner) {
            CodeScannerView(codeTypes: [.qr], simulatedData: "Paul Hudson") { response in
                if case let .success(result) = response {
                    scannedCode = result.string
                    print(scannedCode)
                    isPresentingScanner = false
                }
            }
        }
    }
}

struct qrView_Previews: PreviewProvider {
    static var previews: some View {
        qrView()
    }
}
