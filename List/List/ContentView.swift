//
//  ContentView.swift
//  List
//
//  Created by Jeet Kapadia on 18/06/23.
//

import SwiftUI

struct ContentView: View {
    var appleProduct = [  "iPhone",
                               "iPad",
                                "MacBook Pro",
                                "Macbook Air",
                                "iPod",
                                "Apple TV",
                                "Apple Watch",
                                "Mac mini"
                                     ]
    var body: some View {
        NavigationView {
            List {
                ForEach(self.appleProduct, id: \.self) { item in
                    Text(item)
                }
            }.navigationTitle("Product List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
