//
//  ProfileCoordinator.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation

final class ProfileCoordinator: Coordinator {

    enum Screen: Routable {

    }

    @Published var navigationPath = [Screen]()
    private let showAuthSceneHandler: () -> Void

    init(showAuthSceneHandler: @escaping () -> Void) {
        self.showAuthSceneHandler = showAuthSceneHandler
    }
}

extension ProfileCoordinator: ProfileCoordinatorProtocol {

    func showAuthScene() {
        showAuthSceneHandler()
    }
}
