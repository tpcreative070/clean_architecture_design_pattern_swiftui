//
//  NetworkConfig.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation


protocol NetworkConfig {
    var path: String { get }
    var endPoint: String { get }

    var task: HTTPTask { get }
    var method: HTTPMethod { get }
}
