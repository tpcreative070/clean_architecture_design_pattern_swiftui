//
//  ProfileDTO.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import Foundation


struct ProfileDTO: Codable {
    let id: String
    let nickName: String?
    let email: String
    let avatarLink: String?
    let name: String
    let birthDate: String
    let gender: GenderDTO

    func toDomain() -> Profile {
        .init(
            id: id,
            nickName: nickName ?? "",
            email: email,
            avatarLink: avatarLink ?? "",
            name: name,
            birthDate: DateFormatter.iso8601Full.date(from: birthDate) ?? .now,
            gender: gender == .male ? .male : .female
        )
    }
}
