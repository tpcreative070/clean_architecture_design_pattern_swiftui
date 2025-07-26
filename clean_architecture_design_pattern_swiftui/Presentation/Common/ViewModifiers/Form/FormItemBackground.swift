//
//  FormItemBackground.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct FormItemBackgroundViewModifier: ViewModifier {

    enum Style {
        case `default`
        case error

        var tintColor: Color {
            switch self {
            case .default: .appAccent
            case .error: .appLightGray
            }
        }

        var borderColor: Color {
            switch self {
            case .default: .appGray
            case .error: .red
            }
        }

        var backgroundColor: Color {
            switch self {
            case .default:
                return .clear
            case .error:
                return .red.opacity(Constants.errorOpacity)
            }
        }
    }

    let style: Style

    func body(content: Content) -> some View {
        content
            .tintColor(style.tintColor)
            .background(background)
    }

    private enum Constants {
        static let cornerRadius: CGFloat = 10
        static let errorOpacity: CGFloat = 0.1
    }

    @ViewBuilder
    private var background: some View {
        let rectangle = RoundedRectangle(cornerRadius: Constants.cornerRadius)

        rectangle
            .stroke(style.borderColor)
            .background(rectangle.fill(style.backgroundColor))
    }
}

extension View {
    func formItemBackground(_ style: FormItemBackgroundViewModifier.Style = .default) -> some View {
        modifier(FormItemBackgroundViewModifier(style: style))
    }
}

