//
//  searchView.swift
//  lockrApp
//
//  Created by Alan Yu on 4/16/22.
//

import SwiftUI

struct searchView: View {
    
    @State private var searchText = ""
    let names = ["Test", "Apple", "Go", "Another One"]
    var body: some View {
        VStack{
            NavigationView {
                List {
                    ForEach(searchResults, id: \.self) { name in
                        NavigationLink(destination: Text(name)) {
                            Text(name)
                        }
                    }
                }
                .searchable(text: $searchText)
                .navigationTitle("Items Near By")
            }
        }
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

