//
//  MovieDetails.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

struct MovieDetails: Equatable, Hashable {
    let id: String
    let name: String?
    let poster: String?
    let year: Int
    let country: String?
    let genres: [Genre]?
    let reviews: [ReviewDetails]?
    let time: Int
    let tagline: String?
    let description: String?
    let director: String?
    let budget: Int?
    let fees: Int?
    let ageLimit: Int
    let rating: Double?
    let userRating: Int?
    let isFavorite: Bool
}
