//
//  BackgroundColorViewModifier.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//


import SwiftUI

struct BackgroundColorViewModifier: ViewModifier {

    let color: Color

    func body(content: Content) -> some View {
        ZStack {
            color
                .ignoresSafeArea()

            content
        }
    }
}

extension View {
    func backgroundColor(_ color: Color = .background) -> some View {
        modifier(BackgroundColorViewModifier(color: color))
    }
}

