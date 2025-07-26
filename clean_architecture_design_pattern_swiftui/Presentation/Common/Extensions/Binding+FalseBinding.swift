//
//  Binding+FalseBinding.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

extension Binding {
    static var falseBinding: Binding<Bool> {
        Binding<Bool>(get: { false }, set: { _ in })
    }
}

