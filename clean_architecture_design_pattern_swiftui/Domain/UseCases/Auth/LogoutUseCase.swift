//
//  LogoutUseCase.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

final class LogoutUseCase {

    private let authRepository: AuthRepository
    private let movieRepository: MovieRepository
    private let profileRepository: ProfileRepository

    init(
        authRepository: AuthRepository,
        movieRepository: MovieRepository,
        profileRepository: ProfileRepository
    ) {
        self.authRepository = authRepository
        self.movieRepository = movieRepository
        self.profileRepository = profileRepository
    }

    func execute() async throws {
        try await movieRepository.deleteAllMovies()
        try await authRepository.logOut()
        await profileRepository.deleteProfile()
    }
}
