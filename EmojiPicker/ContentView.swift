//
//  ContentView.swift
//  EmojiPicker
//
//  Created by Eduardo Almeida on 21/09/24.
//

import SwiftUI

enum Emojis: String, CaseIterable {
    case rocket = "🚀"
    case gift = "🎁"
    case guitar = "🎸"
    case lightning = "⚡️"
}

struct ContentView: View {
    @State var selection: Emojis = .guitar
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Emoji Picker!")
                    .font(.system(size: 30))
                    .position(x: 100, y: 0)
                    .bold()
                
                Text(selection.rawValue)
                    .font(.system(size: 200))
                
                Picker("Emoji", selection: $selection) {
                    ForEach(Emojis.allCases, id: \.self) {
                        emoji in
                        Text(emoji.rawValue)
                    }
                }.pickerStyle(.segmented)
            }.padding()
        }.navigationTitle("Emoji Picker!")
            .padding()
    }
}

#Preview {
    ContentView()
}
