//
//  TextRecognitionView.swift
//  SignDecoder
//
//  Created by chuonpiseth on 1/10/26.
//

import SwiftUI

struct TextRecognitionView: View {
    let imageResource: ImageResource
    @State private var textRecognizer: TextRecognizer?
    
    var body: some View {
        VStack {
            Image(imageResource)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .task {
                    textRecognizer = await TextRecognizer(imageResource: imageResource)
                }
            Spacer()
            
            TranslationView(text: textRecognizer?.recognizedText ?? "")
        }
        .padding()
        .navigationTitle("Sign info")
    }
}

#Preview {
    NavigationStack {
        TextRecognitionView(imageResource: .sign1)
            .navigationBarTitleDisplayMode(.inline)
    }
}
