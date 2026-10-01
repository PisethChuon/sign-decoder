//
//  TrailTheme.swift
//  SignDecoder
//
//  Created by chuonpiseth on 2/10/26.
//

import Foundation
import SwiftUI

struct TrailTheme: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            VStack {
                Image(.background)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxHeight: 250, alignment: .top)
                Spacer()
            }
            content
        }
    }
}

extension View {
    func trailThem() -> some View {
        modifier(TrailTheme())
    }
}
