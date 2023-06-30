//
//  CardModel.swift
//  CardsProject
//
//  Created by Jeet Kapadia on 30/06/23.
//

import SwiftUI

// MARK: Card Model

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
