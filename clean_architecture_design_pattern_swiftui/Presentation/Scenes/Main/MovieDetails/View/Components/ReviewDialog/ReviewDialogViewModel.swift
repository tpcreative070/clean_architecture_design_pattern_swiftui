//
//  ReviewDialogViewModel.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation

struct ReviewDialogViewModel: Equatable {
    var rating: Int
    var text: String
    var isAnonymous: Bool
    var isLoading = false

    init() {
        rating = 0
        text = ""
        isAnonymous = true
    }

    init(_ reviewViewModel: ReviewViewModel) {
        rating = reviewViewModel.rating
        text = reviewViewModel.reviewText
        isAnonymous = reviewViewModel.isAnonymous
    }
}

enum ReviewDialogViewEvent {
    case saveTapped
    case cancelTapped
    case isAnonymous(Bool)
    case ratingChanged(Int)
    case reviewTextChanged(String)
}
