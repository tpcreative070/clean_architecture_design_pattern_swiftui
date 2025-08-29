//
//  DeleteFavoriteMovieUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

final class DeleteFavoriteMovieUseCase {

    private let movieRepository: MovieRepository

    init(movieRepository: MovieRepository) {
        self.movieRepository = movieRepository
    }

    func execute(_ movieId: String) async throws {
        try await movieRepository.deleteFavoriteMovie(id: movieId)
    }
}
