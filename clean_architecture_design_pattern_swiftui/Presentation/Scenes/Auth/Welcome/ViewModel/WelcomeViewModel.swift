//
//  WelcomeViewModel.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation

final class WelcomeViewModel: ViewModel {

    @Published private(set) var state: WelcomeViewState
    private let coordinator: AuthCoordinatorProtocol

    init(coordinator: AuthCoordinatorProtocol) {
        state = .idle
        self.coordinator = coordinator
    }

    func handle(_ event: WelcomeViewEvent) {
        switch event {
        case .logInTapped:
            coordinator.showLogin()

        case .registrationTapped:
            coordinator.showPersonalInfoRegistration()
        }
    }
}
