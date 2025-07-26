//
//  SecureInputView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct SecureInputView: View {

    @Binding var text: String

    var errorMessage: String?
    var isErrorShowed: Bool = false

    @State private var isSecured = true

    var body: some View {
        HStack(spacing: Constants.contentSpacing) {
            textField
                .labelsHidden()

            Image(systemName: isSecured ? Constants.Image.eyeSlash : Constants.Image.eye)
                .imageScale(.medium)
                .foregroundStyle(.secondary)
                .padding(.trailing)
                .onTapGesture {
                    isSecured.toggle()
                }
        }
        .formErrorableItem(
            message: errorMessage,
            isErrorShowed: isErrorShowed
        )
    }

    private enum Constants {
        static let contentSpacing: CGFloat = 0

        enum Image {
            static let eye = "eye"
            static let eyeSlash = "eye.slash"
            static let trailingInset: CGFloat = 12
        }
    }

    @ViewBuilder
    private var textField: some View {
        if isSecured {
            SecureField("", text: $text)
        } else {
            TextField("", text: $text)
        }
    }
}

