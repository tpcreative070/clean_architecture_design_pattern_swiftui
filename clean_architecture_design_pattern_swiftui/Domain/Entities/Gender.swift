//
//  Gender.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation
enum Gender: String, CaseIterable, Identifiable {
    case male
    case female

    var id: String {
        rawValue
    }
}

