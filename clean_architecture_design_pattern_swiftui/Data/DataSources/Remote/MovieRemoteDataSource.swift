//
//  MovieRemoteDataSource.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

final class MovieRemoteDataSource {

    private let networkService: NetworkService

    init(networkService: NetworkService) {
        self.networkService = networkService
    }
}

extension MovieRemoteDataSource {

    func fetchMovie(id: String) async throws -> MovieDTO {
        let config = MovieNetworkConfig.detailsById(id)
        return try await networkService.request(with: config)
    }

    func fetchMoviesPagedList(page: Int) async throws -> MoviesPagedResponse {
        let config = MovieNetworkConfig.listByPage(page)
        return try await networkService.request(with: config)
    }

    func addFavoriteMovie(movieId: String) async throws {
        let config = FavoriteMoviesNetworkConfig.add(movieId: movieId)
        try await networkService.request(with: config, useToken: true)
    }

    func deleteFavoriteMovie(movieId: String) async throws {
        let config = FavoriteMoviesNetworkConfig.delete(movieId: movieId)
        try await networkService.request(with: config, useToken: true)
    }

    func fetchFavoriteMovies() async throws -> MoviesResponse {
        let config = FavoriteMoviesNetworkConfig.list
        return try await networkService.request(with: config, useToken: true)
    }
}
