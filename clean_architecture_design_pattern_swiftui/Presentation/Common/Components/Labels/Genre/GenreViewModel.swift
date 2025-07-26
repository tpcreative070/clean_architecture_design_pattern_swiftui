//
//  GenreViewModel.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import Foundation


struct GenreViewModel: Equatable, Identifiable {
    let id: String
    let name: String
    let style: GenreTag.Style
}

extension GenreViewModel: HasPlaceholder {
    static func placeholder(id: String) -> GenreViewModel {
        .init(id: id, name: .placeholder(length: 7), style: .body)
    }
}
