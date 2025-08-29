//
//  GenderSegmentedPicker.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import SwiftUI

struct GenderSegmentedPicker: View {

    @Binding var selection: Gender

    var body: some View {
        BaseSegmentedPicker(selection: $selection) {
            ForEach(Gender.allCases) { gender in
                Text(LocalizedStringKey(gender.rawValue)).tag(gender)
            }
        }
        .frame(height: Constants.height)
    }

    private enum Constants {
        static let height: CGFloat = 43
    }
}
