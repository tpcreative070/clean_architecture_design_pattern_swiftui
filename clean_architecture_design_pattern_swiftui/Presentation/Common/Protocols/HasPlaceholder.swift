//
//  HasPlaceholder.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import Foundation


protocol HasPlaceholder {
    static func placeholder(id: String) -> Self
}

extension Array where Element: HasPlaceholder {
    static func placeholders(count: Int) -> [Element] {
        (0..<count).map { .placeholder(id: "\($0)") }
    }
}
