//
//  LoginUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation


final class LoginUseCase {
    
    private let authRepository: AuthRepository
    
    init(authRepository: AuthRepository) {
        self.authRepository = authRepository
    }
    
    func execute(username: String, password: String) async throws {
        let credentials = LoginCredentials(username: username, password: password)
        try await authRepository.logIn(credentials: credentials)
    }
}
