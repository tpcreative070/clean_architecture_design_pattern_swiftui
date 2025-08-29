//
//  Untitled.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

struct GenreDTO: Decodable {
    let id: String
    let name: String?

    func toDomain() -> Genre {
        .init(id: id, name: name)
    }
}
