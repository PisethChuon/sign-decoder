//
//  ContentView.swift
//  SignDecoder
//
//  Created by chuonpiseth on 1/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 50) {
                Text("Top to select a sign to translate")
                    .font(.headline)
                
                ImageGalleryView()
                Spacer()
            }
            .trailThem()
            .navigationTitle("Sign Decoder")
        }
    }
}

#Preview {
    ContentView()
}
