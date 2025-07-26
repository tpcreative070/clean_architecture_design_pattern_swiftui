//
//  FormErrorableItemViewModifier.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//


import SwiftUI

struct FormErrorableItemViewModifier: ViewModifier {

    var message: String?
    var isErrorShowed: Bool

    func body(content: Content) -> some View {
        content
            .formTextFieldStyle()
            .formItemBackground(isErrorShowed ? .error : .default)
            .errorFooter(message: message, isShowed: isErrorShowed)
    }
}

extension View {
    func formErrorableItem(
        message: String?,
        isErrorShowed: Bool
    ) -> some View {
        modifier(FormErrorableItemViewModifier(
            message: message,
            isErrorShowed: isErrorShowed
        ))
    }
}

