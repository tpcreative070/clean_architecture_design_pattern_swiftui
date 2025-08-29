//
//  MovieShort.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

struct MovieShort {
    let id: String
    let name: String?
    let poster: String?
    let year: Int
    let country: String?
    let genres: [Genre]?
    let reviews: [ReviewShort]?
}
