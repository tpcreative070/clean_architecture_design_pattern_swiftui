//
//  MovieNetworkConfig.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

enum MovieNetworkConfig: NetworkConfig {
    case listByPage(Int)
    case detailsById(String)

    var path: String {
        "movies/"
    }

    var endPoint: String {
        switch self {
        case .listByPage(let page):
            return "\(page)"
        case .detailsById(let id):
            return "details/" + id
        }
    }

    var task: HTTPTask {
        .request
    }

    var method: HTTPMethod {
        .get
    }
}
