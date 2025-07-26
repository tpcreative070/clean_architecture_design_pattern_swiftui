//
//  CalloutButtonStyle.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct CalloutButtonStyle: ButtonStyle {

    let calloutText: LocalizedStringKey

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: Constants.spacing) {
            Text(calloutText)
                .foregroundStyle(.appLightGray)

            configuration.label
                .foregroundStyle(.appAccent)
                .fontWeight(.medium)
        }
        .font(.callout)
        .padding(.bottom)
    }

    private enum Constants {
        static let spacing: CGFloat = 6
    }
}
