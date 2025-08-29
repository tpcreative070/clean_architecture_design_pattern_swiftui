//
//  RegisterUserUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

final class RegisterUserUseCase {
    
    private let authRepository: AuthRepository
    
    init(authRepository: AuthRepository) {
        self.authRepository = authRepository
    }
    
    func execute(_ user: UserRegister) async throws {
        try await authRepository.register(user: user)
    }
}
