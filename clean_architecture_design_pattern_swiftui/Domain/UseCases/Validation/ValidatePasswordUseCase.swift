//
//  ValidatePasswordUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation


final class ValidatePasswordUseCase {

    enum PasswordValidationError: Error {
        case invalidPassword
    }

    private enum Constants {
        static let minPasswordLength = 6
    }

    func execute(_ password: String) throws {
        guard password.count >= Constants.minPasswordLength else {
            throw PasswordValidationError.invalidPassword
        }
    }
}
