//
//  ProfileRepository.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation


protocol ProfileRepository {
    func deleteProfile() async
    func getProfile() async throws -> Profile
    func updateProfile(_ profile: Profile) async throws
}
