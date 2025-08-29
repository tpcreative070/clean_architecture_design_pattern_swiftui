//
//  UserRegisterDTO.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

struct UserRegisterDTO: Encodable {
    let userName: String
    let name: String
    let password: String
    let email: String
    let birthDate: String
    let gender: GenderDTO
}
