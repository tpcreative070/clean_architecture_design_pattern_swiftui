//
//  GenreObject.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation
import RealmSwift

final class GenreObject: Object {
    @Persisted(primaryKey: true) var id: String
    @Persisted var name: String?

    convenience init(_ genre: Genre) {
        self.init()

        id = genre.id
        name = genre.name
    }

    func toDomain() -> Genre {
        Genre(id: id, name: name)
    }
}
