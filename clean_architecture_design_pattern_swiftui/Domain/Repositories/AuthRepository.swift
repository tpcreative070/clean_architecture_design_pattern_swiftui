//
//  AuthRepository.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation


protocol AuthRepository {
    func logOut() async throws
    func register(user: UserRegister) async throws
    func logIn(credentials: LoginCredentials) async throws
}
