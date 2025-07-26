//
//  String+Placeholder.swift.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import Foundation


extension String {
    static func placeholder(length: Int) -> String {
        return String(Array(repeating: "X", count: length))
    }
}
