//
//  UserNetworkConfig.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation


enum UserNetworkConfig: NetworkConfig {
    case retrieveProfile
    case updateProfile(Data)

    var path: String {
        "account/"
    }

    var endPoint: String {
        "profile"
    }

    var task: HTTPTask {
        switch self {
        case .retrieveProfile:
            return .request
        case .updateProfile(let data):
            return .requestBody(data)
        }
    }

    var method: HTTPMethod {
        switch self {
        case .retrieveProfile:
            return .get
        case .updateProfile:
            return .put
        }
    }
}
