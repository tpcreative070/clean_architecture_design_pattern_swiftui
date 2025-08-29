//
//  UserShortDTO.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

struct UserShortDTO: Decodable {
    let userId: String
    let nickName: String?
    let avatar: String?

    func toDomain() -> UserShort {
        .init(userId: userId, nickName: nickName, avatar: avatar)
    }
}
