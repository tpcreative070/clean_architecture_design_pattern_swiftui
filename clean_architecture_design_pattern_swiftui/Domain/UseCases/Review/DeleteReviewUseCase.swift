//
//  DeleteReviewUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

final class DeleteReviewUseCase {

    private let reviewRepository: ReviewRepository

    init(reviewRepository: ReviewRepository) {
        self.reviewRepository = reviewRepository
    }

    func execute(_ reviewId: String, movieId: String) async throws {
        try await reviewRepository.deleteReview(reviewId: reviewId, movieId: movieId)
    }
}
