//
//  FetchProfileUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation



final class FetchProfileUseCase {

    private let profileRepository: ProfileRepository

    init(profileRepository: ProfileRepository) {
        self.profileRepository = profileRepository
    }

    @discardableResult
    func execute() async throws -> Profile {
        return try await profileRepository.getProfile()
    }
}
