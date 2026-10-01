//
//  TranslationView.swift
//  SignDecoder
//
//  Created by chuonpiseth on 1/10/26.
//

import SwiftUI
import Translation

struct TranslationView: View {
    var text: String
    @State private var showingTranslation = false
    
    var body: some View {
        VStack {
            Text("Indentified Text")
                .font(.subheadline.bold())
                .textCase(.uppercase)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            Text(text)
                .frame(maxWidth: .infinity,
                       maxHeight: 50,
                       alignment: .topLeading)
                .padding()
                .background(Color(white: 0.9))
                .translationPresentation(isPresented: $showingTranslation, text: text)
            
            Button {
                showingTranslation = true
            } label: {
                Text("Translate")
            }
        }
    }
}

#Preview {
    TranslationView(text: "Caution, falling rocks")
}
