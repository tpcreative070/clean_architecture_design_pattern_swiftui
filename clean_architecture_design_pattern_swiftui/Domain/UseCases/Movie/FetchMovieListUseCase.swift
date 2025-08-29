//
//  FetchMovieListUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation

final class FetchMovieListUseCase {

    private let movieRepository: MovieRepository

    init(movieRepository: MovieRepository) {
        self.movieRepository = movieRepository
    }

    func execute(page: Page?) async throws -> [Movie] {
        return try await movieRepository.getMovieList(page: page)
    }
}
