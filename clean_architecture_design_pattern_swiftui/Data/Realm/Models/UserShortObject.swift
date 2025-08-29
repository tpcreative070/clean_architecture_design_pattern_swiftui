//
//  UserShortObject.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation
import RealmSwift

final class UserShortObject: Object {
    @Persisted(primaryKey: true) var userId: String
    @Persisted var nickName: String?
    @Persisted var avatar: String?

    convenience init(_ userShort: UserShort) {
        self.init()

        userId = userShort.userId
        nickName = userShort.nickName
        avatar = userShort.avatar
    }

    func toDomain() -> UserShort {
        UserShort(userId: userId, nickName: nickName, avatar: avatar)
    }
}
