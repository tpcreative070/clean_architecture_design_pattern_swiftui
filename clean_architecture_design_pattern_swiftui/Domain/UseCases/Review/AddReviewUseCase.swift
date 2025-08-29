//
//  AddReviewUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

final class AddReviewUseCase {

    private let reviewRepository: ReviewRepository

    init(reviewRepository: ReviewRepository) {
        self.reviewRepository = reviewRepository
    }

    func execute(review: ReviewModify, movieId: String) async throws {
        try await reviewRepository.addReview(review, movieId: movieId)
    }
}
