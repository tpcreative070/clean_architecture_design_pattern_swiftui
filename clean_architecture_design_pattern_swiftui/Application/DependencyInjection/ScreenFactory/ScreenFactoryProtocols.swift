//
//  ScreenFactoryProtocols.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import SwiftUI

@MainActor
protocol ProfileViewFactory {
    func makeProfileView(coordinator: ProfileCoordinatorProtocol) -> ProfileView
}

@MainActor
protocol FavoritesViewFactory {
    func makeFavoritesView(coordinator: FavoritesCoordinatorProtocol) -> FavoritesView
}

@MainActor
protocol HomeViewFactory {
    func makeHomeView(coordinator: HomeCoordinatorProtocol) -> HomeView
}

@MainActor
protocol LoginViewFactory {
    func makeLoginView(coordinator: AuthCoordinatorProtocol) -> LoginView
}

@MainActor
protocol WelcomeViewFactory {
    func makeWelcomeView(coordinator: AuthCoordinatorProtocol) -> WelcomeView
}

@MainActor
protocol PersonalInfoRegistrationViewFactory {
    func makePersonalInfoRegistrationView(
        coordinator: AuthCoordinatorProtocol
    ) -> PersonalInfoRegistrationView
}

@MainActor
protocol MovieDetailsViewFactory {
    func makeMovieDetailsView(
        movieId: String,
        showAuthSceneHandler: @escaping () -> Void
    ) -> MovieDetailsView
}

@MainActor
protocol PasswordRegistrationViewFactory {
    func makePasswordRegistrationView(
        personalInfo: PersonalInfoViewModel,
        coordinator: AuthCoordinatorProtocol
    ) -> PasswordRegistrationView
}
