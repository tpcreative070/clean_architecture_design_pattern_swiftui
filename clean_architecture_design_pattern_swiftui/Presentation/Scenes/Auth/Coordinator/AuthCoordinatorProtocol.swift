//
//  AuthCoordinatorProtocol.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation

@MainActor
protocol AuthCoordinatorProtocol {
    func showLogin()
    func showMainScene()
    func showPersonalInfoRegistration()
    func showPasswordRegistration(personalInfo: PersonalInfoViewModel)
}
