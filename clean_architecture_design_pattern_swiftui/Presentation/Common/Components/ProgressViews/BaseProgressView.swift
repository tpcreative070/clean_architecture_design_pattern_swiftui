//
//  BaseProgressView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import SwiftUI

struct BaseProgressView: View {

    var body: some View {
        ProgressView()
            .tint(.appAccent)
            .frame(maxWidth: .infinity)
    }
}
