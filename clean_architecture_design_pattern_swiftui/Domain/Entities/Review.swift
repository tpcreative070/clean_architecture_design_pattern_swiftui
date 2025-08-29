//
//  Review.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

struct Review {
    let id: String
    let rating: Int
    let reviewText: String?
    let isAnonymous: Bool
    let createDateTime: Date
    let author: UserShort?
}
