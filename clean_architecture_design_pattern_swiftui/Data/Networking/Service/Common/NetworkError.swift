//
//  NetworkError.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation


enum NetworkError: LocalizedError {
    case missingURL
    case noConnect
    case invalidData
    case requestFailed
    case encodingError
    case decodingError
    case invalidResponse

    var errorDescription: String? {
        switch self {
        case .missingURL:
            return LocalizedKey.ErrorMessage.Network.missingURL
        case .noConnect:
            return LocalizedKey.ErrorMessage.Network.noConnect
        case .invalidResponse:
            return LocalizedKey.ErrorMessage.Network.invalidResponse
        case .invalidData:
            return LocalizedKey.ErrorMessage.Network.invalidData
        case .decodingError:
            return LocalizedKey.ErrorMessage.Network.decodingError
        case .encodingError:
            return LocalizedKey.ErrorMessage.Network.encodingError
        case .requestFailed:
            return LocalizedKey.ErrorMessage.Network.requestFailed
        }
    }
}
