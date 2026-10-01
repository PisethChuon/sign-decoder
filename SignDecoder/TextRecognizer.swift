//
//  TextRecognizer.swift
//  SignDecoder
//
//  Created by chuonpiseth on 1/10/26.
//

import Foundation
import SwiftUI
import Vision

struct TextRecognizer {
    var observations: [RecognizedTextObservation] = []
    var recognizedText = ""
    
    init(imageResource: ImageResource) async {
        var request = RecognizeTextRequest()
        request.recognitionLevel = .accurate
        
        let image = UIImage(resource: imageResource)
        
        if let imageData = image.pngData(),
           let results = try? await request.perform(on: imageData) {
            observations = results
        }
        
        for observation in observations {
            let candidate = observation.topCandidates(1)
            
            if let observedText = candidate.first?.string {
                recognizedText += "\(observedText) "
            }
        }
    }
}
