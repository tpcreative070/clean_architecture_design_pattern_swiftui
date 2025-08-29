//
//  ProfileCoordinatorView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import SwiftUI

struct ProfileCoordinatorView: View {

    private let factory: ProfileCoordinatorFactory
    @ObservedObject private var coordinator: ProfileCoordinator
    
    init(_ coordinator: ProfileCoordinator, factory: ProfileCoordinatorFactory) {
        self.factory = factory
        self.coordinator = coordinator
    }
    
    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            factory.makeProfileView(coordinator: coordinator)
        }
    }
}
