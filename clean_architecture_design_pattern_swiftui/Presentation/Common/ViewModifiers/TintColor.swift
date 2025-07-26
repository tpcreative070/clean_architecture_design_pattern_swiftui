//
//  TintColor.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//


import SwiftUI

struct TintColor: ViewModifier {

    let color: Color

    func body(content: Content) -> some View {
        if #available(iOS 16.1, *) {
            content
                .tint(color)
        } else {
            content
                .accentColor(color)
        }
    }
}

extension View {
    func tintColor(_ color: Color) -> some View {
        modifier(TintColor(color: color))
    }
}

