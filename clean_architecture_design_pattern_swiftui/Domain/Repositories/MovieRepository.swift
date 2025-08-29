//
//  MovieRepository.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//



import Foundation

protocol MovieRepository {
    func getMovie(id: String) async throws -> Movie
    func getMovieList(page: Page?) async throws -> [Movie]
    
    @discardableResult
    func getFavoriteMovies() async throws -> [Movie]
    func addFavoriteMovie(id: String) async throws
    
    func deleteAllMovies() async throws
    func deleteFavoriteMovie(id: String) async throws
}
