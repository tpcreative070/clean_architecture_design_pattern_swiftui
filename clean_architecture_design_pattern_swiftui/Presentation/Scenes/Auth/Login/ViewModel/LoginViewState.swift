//
//  LoginViewState.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

struct LoginViewState: Equatable {
    var username = ""
    var password = ""

    var isLoading = false
    var loginError: String?

    var isLogInDisabled: Bool {
        username.isEmpty || password.isEmpty
    }

    var isLoginErrorShowing: Bool {
        loginError != nil && isLoading == false
    }
}

enum LoginViewEvent {
    case logInTapped
    case registerTapped
    case usernameChanged(String)
    case passwordChanged(String)
}
