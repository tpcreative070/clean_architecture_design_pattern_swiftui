//
//  View+Redacted.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import Foundation

import SwiftUI

extension View {
    func redacted(if condition: Bool) -> some View {
        redacted(reason: condition ? .placeholder : [])
    }
}
