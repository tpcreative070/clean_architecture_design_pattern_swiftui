//
//  AuthNetworkConfig.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation


enum AuthNetworkConfig: NetworkConfig {
    case logout
    case login(Data)
    case register(Data)

    var path: String {
        "account/"
    }

    var endPoint: String {
        switch self {
        case .login:
            return "login"
        case .logout:
            return "logout"
        case .register:
            return "register"
        }
    }

    var task: HTTPTask {
        switch self {
        case .logout:
            return .request
        case .login(let data), .register(let data):
            return .requestBody(data)
        }
    }

    var method: HTTPMethod {
        return .post
    }
}
