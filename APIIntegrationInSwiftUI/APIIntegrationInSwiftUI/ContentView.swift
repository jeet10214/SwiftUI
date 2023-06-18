//
//  ContentView.swift
//  APIIntegrationInSwiftUI
//
//  Created by Jeet Kapadia on 18/06/23.
//

import SwiftUI

enum Side: Equatable, Hashable {
    case left
    case right
}

struct ContentView: View {
    @State private var joke: String = ""
    
    var body: some View {
        Text(joke).padding(sides: [.left, .right], value: 20)
        Button {
            Task {
                joke = await getJoke()
            }
        } label: {
            Text("Fetch Joke")
        }
    }
}

func getJoke() async -> String {
    do {
        let (data, _) = try await URLSession.shared.data(from: URL(string:"https://api.chucknorris.io/jokes/random")!)
        let decodedResponse = try? JSONDecoder().decode(Joke.self, from: data)
        return decodedResponse?.value ?? ""
    } catch {
        debugPrint(error.localizedDescription)
        return ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Codable {
    let value: String
}


extension View {
    func padding(sides: [Side], value: CGFloat = 8) -> some View {
        HStack(spacing: 0) {
            if sides.contains(.left) {
                Spacer().frame(width: value)
            }
            self
            if sides.contains(.right) {
                Spacer().frame(width: value)
            }
        }
    }
}
