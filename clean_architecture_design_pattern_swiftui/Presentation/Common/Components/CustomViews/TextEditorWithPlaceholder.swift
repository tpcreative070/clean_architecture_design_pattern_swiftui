//
//  TextEditorWithPlaceholder.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct TextEditorWithPlaceholder: View {

    @Binding var text: String

    let placeholder: LocalizedStringKey
    let verticalInset: CGFloat
    let horizontalInset: CGFloat

    init(
        text: Binding<String>,
        placeholder: LocalizedStringKey,
        verticalInset: CGFloat = 0,
        horizontalInset: CGFloat = 0
    ) {
        _text = text
        self.placeholder = placeholder
        self.verticalInset = verticalInset
        self.horizontalInset = horizontalInset
    }

    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundStyle(.secondary)
                    .padding(.vertical, verticalInset + Constants.defaultVerticalInset)
                    .padding(.horizontal, horizontalInset + Constants.defaultHorizontalInset)
            }

            TextEditor(text: $text)
                .padding(.vertical, verticalInset)
                .padding(.horizontal, horizontalInset)
        }
    }

    private enum Constants {
        static let defaultVerticalInset: CGFloat = 10
        static let defaultHorizontalInset: CGFloat = 6
    }
}

