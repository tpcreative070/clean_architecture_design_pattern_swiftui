//
//  ReviewDTO.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

struct ReviewDTO: Decodable {
    let id: String
    let rating: Int
    let reviewText: String?
    let isAnonymous: Bool
    let createDateTime: String
    let author: UserShortDTO?

    func toDomain() -> Review {
        .init(
            id: id,
            rating: rating,
            reviewText: reviewText,
            isAnonymous: isAnonymous,
            createDateTime: DateFormatter.iso8601FullWithMs.date(from: createDateTime) ?? .now,
            author: author?.toDomain()
        )
    }
}
