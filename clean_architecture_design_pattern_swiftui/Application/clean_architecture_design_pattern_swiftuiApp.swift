//
//  clean_architecture_design_pattern_swiftuiApp.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 10/7/25.
//

import SwiftUI

@main
struct clean_architecture_design_pattern_swiftuiApp: App {
    private let appFactory = AppFactory()

    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(
                screenFactory: ScreenFactory(appFactory: appFactory),
                coordinator: AppCoordinator(
                    fetchProfileUseCase: appFactory.makeFetchProfileUseCase(),
                    fetchFavoriteMoviesUseCase: appFactory.makeFetchFavoriteMoviesUseCase()
                )
            )
            .preferredColorScheme(.dark)
            .onAppear {
                NetworkMonitor.shared.startMonitoring()
            }
        }
    }
}
