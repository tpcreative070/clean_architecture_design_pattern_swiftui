//
//  FormBorderedTextFieldStyle.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//


import SwiftUI

struct FormBorderedTextFieldStyle: TextFieldStyle {

    let style: FormItemBackgroundViewModifier.Style

    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .formTextFieldStyle()
            .formItemBackground(style)
    }
}

extension View {
    func formBorderedTextFieldStyle(
        style: FormItemBackgroundViewModifier.Style = .default
    ) -> some View {
        textFieldStyle(FormBorderedTextFieldStyle(style: style))
    }
}

