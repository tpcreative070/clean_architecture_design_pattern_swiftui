//
//  FavoritesCoordinatorView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import SwiftUI

struct FavoritesCoordinatorView: View {

    private let factory: FavoritesCoordinatorFactory
    @ObservedObject private var coordinator: FavoritesCoordinator

    init(_ coordinator: FavoritesCoordinator, factory: FavoritesCoordinatorFactory) {
        self.factory = factory
        self.coordinator = coordinator
    }

    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            factory.makeFavoritesView(coordinator: coordinator)
                .navigationDestination(for: FavoritesCoordinator.Screen.self) {
                    destination($0)
                }
        }
    }

    @ViewBuilder
    private func destination(_ screen: FavoritesCoordinator.Screen) -> some View {
        switch screen {
        case .movieDetails(let movieId):
            factory.makeMovieDetailsView(
                movieId: movieId,
                showAuthSceneHandler: { coordinator.showAuthScene() }
            )
        }
    }
}
