//
//  searchView.swift
//  lockrApp
//
//  Created by Rahul Chander on 4/17/22.
//

import SwiftUI

struct searchView: View {
    
    @State private var searchText = ""

    let names = ["Umbrella ⛱", "Great Gatsby 🍷", "Anne of Green Gables 👩🏻‍🦰", "Tale of Two Cities 🌆", "Of Mice and Men 🐭", "Keys 🔑", "Powerbank 🔋", "Flashlight 🔦", "Chips 🍟" ]
    

    let url = URL(string: "maps://?saddr=&daddr=\(34.0689),\(-118.4452)")
    var body: some View {
        VStack{
            NavigationView {
                List {
                    ForEach(searchResults, id: \.self) { name in
                        Button{
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }label:{
                            Text(name)
                                
                        }
                    }
                }
                .searchable(text: $searchText)
                .navigationTitle("Search for Items 🔎")
                
            }
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}

struct searchView_Previews: PreviewProvider {
    static var previews: some View {
        
        searchView()
    }
}
