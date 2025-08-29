//
//  WelcomeViewState.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//



enum WelcomeViewState: Equatable {
    case idle
}

enum WelcomeViewEvent {
    case logInTapped
    case registrationTapped
}
