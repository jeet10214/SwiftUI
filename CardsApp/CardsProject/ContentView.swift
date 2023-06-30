//
//  ContentView.swift
//  CardsProject
//
//  Created by Jeet Kapadia on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK:- Properties
    var cards: [Card] = cardData
    // MARK :- Content main view
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
