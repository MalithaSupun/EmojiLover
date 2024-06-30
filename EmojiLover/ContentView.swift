//
//  ContentView.swift
//  EmojiLover
//
//  Created by Malitha Supun on 2024-06-30.
//
import SwiftUI

enum Emoji: String, CaseIterable {
    case 😌, 🫰, 🌹, 💞
}

struct ContentView: View {
    @State private var selection: Emoji = .🌹

    var body: some View {
        NavigationView { // Wrap ContentView in NavigationView
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))

                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue).tag(emoji)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .navigationTitle("Emoji Lovers") // Set navigation title here
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

