//
//  ErrorFooterViewModifier.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct ErrorFooterViewModifier: ViewModifier {

    var message: String?
    var isShowed: Bool

    func body(content: Content) -> some View {
        VStack(alignment: .leading) {
            content

            if isShowed, message?.isEmpty == false {
                Text(LocalizedStringKey(message ?? ""))
                    .font(.callout)
                    .foregroundStyle(.red)
                    .animation(.bouncy, value: message)
            }
        }
    }
}

extension View {
    func errorFooter(message: String?, isShowed: Bool) -> some View {
        modifier(ErrorFooterViewModifier(message: message, isShowed: isShowed))
    }
}

