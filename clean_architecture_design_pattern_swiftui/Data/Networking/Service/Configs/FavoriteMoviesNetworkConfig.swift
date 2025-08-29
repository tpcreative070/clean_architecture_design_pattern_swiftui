//
//  FavoriteMoviesNetworkConfig.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

enum FavoriteMoviesNetworkConfig: NetworkConfig {
    case list
    case add(movieId: String)
    case delete(movieId: String)

    var path: String {
        "favorites/"
    }

    var endPoint: String {
        switch self {
        case .list:
            return ""
        case .add(let movieId):
            return movieId + "/add"
        case .delete(let movieId):
            return movieId + "/delete"
        }
    }

    var task: HTTPTask {
        return .request
    }

    var method: HTTPMethod {
        switch self {
        case .list:
            return .get
        case .add:
            return .post
        case .delete:
            return .delete
        }
    }
}
