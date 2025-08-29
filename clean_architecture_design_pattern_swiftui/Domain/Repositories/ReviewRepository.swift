//
//  ReviewRepository.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

protocol ReviewRepository {
    func deleteReview(reviewId: String, movieId: String) async throws
    func addReview(_ review: ReviewModify, movieId: String) async throws
    func updateReview(_ review: ReviewModify, reviewId: String, movieId: String) async throws
}
