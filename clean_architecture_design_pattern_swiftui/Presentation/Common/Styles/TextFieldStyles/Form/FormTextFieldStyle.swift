//
//  FormTextFieldStyle.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct FormTextFieldStyle: TextFieldStyle {

    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .frame(height: Constants.height)
            .padding(.horizontal, Constants.horizontalInset)
            .padding(.vertical, Constants.verticalInset)
    }

    private enum Constants {
        static let height: CGFloat = 37
        static let verticalInset: CGFloat = 2
        static let horizontalInset: CGFloat = 12
    }
}

extension View {
    func formTextFieldStyle() -> some View {
        textFieldStyle(FormTextFieldStyle())
    }
}

