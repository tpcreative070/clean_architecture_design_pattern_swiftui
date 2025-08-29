//
//  AuthCoordinatorView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//



import SwiftUI

struct AuthCoordinatorView: View {

    private let factory: AuthCoordinatorFactory
    @ObservedObject private var coordinator: AuthCoordinator

    init(_ coordinator: AuthCoordinator, factory: AuthCoordinatorFactory) {
        self.factory = factory
        self.coordinator = coordinator
    }

    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            factory.makeWelcomeView(coordinator: coordinator)
                .navigationDestination(for: AuthCoordinator.Screen.self) {
                    destination($0)
                }
        }
    }

    @ViewBuilder
    private func destination(_ screen: AuthCoordinator.Screen) -> some View {
        switch screen {
        case .login:
            factory.makeLoginView(coordinator: coordinator)
        case .personalInfoRegistration:
            factory.makePersonalInfoRegistrationView(coordinator: coordinator)
        case .passwordRegistration(let personalInfo):
            factory.makePasswordRegistrationView(personalInfo: personalInfo, coordinator: coordinator)
        }
    }
}

