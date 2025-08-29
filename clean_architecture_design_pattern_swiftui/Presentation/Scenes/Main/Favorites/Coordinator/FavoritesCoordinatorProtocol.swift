//
//  FavoritesCoordinatorProtocol.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation

@MainActor
protocol FavoritesCoordinatorProtocol {
    func showAuthScene()
    func showMovieDetails(_ movieId: String)
}
