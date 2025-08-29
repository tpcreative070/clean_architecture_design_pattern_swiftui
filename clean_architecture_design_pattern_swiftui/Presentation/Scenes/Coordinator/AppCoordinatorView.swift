//
//  AppCoordinatorView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import SwiftUI

struct AppCoordinatorView: View {

    private let screenFactory: ScreenFactory
    @ObservedObject private var coordinator: AppCoordinator

    init(screenFactory: ScreenFactory, coordinator: AppCoordinator) {
        self.screenFactory = screenFactory
        self.coordinator = coordinator
    }

    var body: some View {
        sceneView
            .onAppear {
                coordinator.handle(.checkAuthorization)
            }
    }

    @ViewBuilder
    private var sceneView: some View {
        switch coordinator.state {
        case .idle:
            EmptyView()

        case .loading:
            ProgressView()
                .tint(.appAccent)
                .backgroundColor()

        case .auth:
            AuthCoordinatorView(
                AuthCoordinator(showMainSceneHandler: { coordinator.handle(.showMain) }),
                factory: screenFactory
            )

        case .main:
            MainCoordinatorView(
                factory: screenFactory,
                showAuthSceneHandler: { coordinator.handle(.showAuth) }
            )
        }
    }
}
