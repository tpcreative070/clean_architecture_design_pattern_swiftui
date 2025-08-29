//
//  ReviewShortDTO.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation

struct ReviewShortDTO: Decodable {
    let id: String
    let rating: Int

    func toDomain() -> ReviewShort {
        .init(id: id, rating: rating)
    }
}
