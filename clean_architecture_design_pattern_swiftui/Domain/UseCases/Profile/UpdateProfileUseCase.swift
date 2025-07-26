//
//  UpdateProfileUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation



final class UpdateProfileUseCase {

    private let profileRepository: ProfileRepository

    init(profileRepository: ProfileRepository) {
        self.profileRepository = profileRepository
    }

    func execute(_ profile: Profile) async throws {
        try await profileRepository.updateProfile(profile)
    }
}

