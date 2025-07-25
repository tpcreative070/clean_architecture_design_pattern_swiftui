//
//  RatingTagView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct RatingTagView: View {

    enum Size {
        case small
        case medium
    }

    enum Style: Equatable {
        case titleAndIcon
        case titleOnly(Size)

        var fontWeight: Font.Weight {
            switch self {
            case .titleOnly: .semibold
            case .titleAndIcon: .medium
            }
        }

        var textColor: Color {
            switch self {
            case .titleOnly: .black
            case .titleAndIcon: .white
            }
        }

        var cornerRadius: CGFloat {
            switch self {
            case .titleOnly: Constants.TitleOnly.cornerRadius
            case .titleAndIcon: Constants.TitleAndIcon.cornerRadius
            }
        }

        var width: CGFloat {
            switch self {
            case .titleAndIcon:
                return Constants.TitleAndIcon.width
            case .titleOnly(.small):
                return Constants.TitleOnly.Width.small
            case .titleOnly(.medium):
                return Constants.TitleOnly.Width.medium
            }
        }

        var height: CGFloat {
            switch self {
            case .titleAndIcon:
                return Constants.TitleAndIcon.height
            case .titleOnly(.small):
                return Constants.TitleOnly.Height.small
            case .titleOnly(.medium):
                return Constants.TitleOnly.Height.medium
            }
        }
    }

    let style: Style
    let value: Double

    var body: some View {
        HStack(spacing: Constants.contentSpacing) {
            if case .titleAndIcon = style {
                Image(systemName: Constants.imageName)
                    .imageScale(.small)
            }
            Text(style == .titleAndIcon ? "\(Int(value))" : "\(String(format:"%.1f", value))")
        }
        .fontWeight(style.fontWeight)
        .foregroundStyle(style.textColor)
        .frame(width: style.width, height: style.height)
        .padding(.horizontal, Constants.horizontalInsets)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: style.cornerRadius))
    }

    private var backgroundColor: Color {
        switch value {
        case 0..<3: .appRed
        case 3..<4: .appOrangeFire
        case 4..<6: .appOrange
        case 6..<8: .appYellow
        case 8..<9: .appGreenLight
        case 9...10: .appGreen
        default: .secondary
        }
    }

    private enum Constants {
        static let imageName = "star.fill"
        static let contentSpacing: CGFloat = 3
        static let horizontalInsets: CGFloat = 3

        enum TitleAndIcon {
            static let width: CGFloat = 42
            static let height: CGFloat = 32
            static let cornerRadius: CGFloat = 17
        }

        enum TitleOnly {
            static let cornerRadius: CGFloat = 7

            enum Width {
                static let small: CGFloat = 36
                static let medium: CGFloat = 55
            }

            enum Height {
                static let small: CGFloat = 23
                static let medium: CGFloat = 32
            }
        }
    }
}
