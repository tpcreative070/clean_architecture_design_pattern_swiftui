//
//  CoordinatorFactoryProtocols.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

protocol ProfileCoordinatorFactory: ProfileViewFactory {}

protocol FavoritesCoordinatorFactory: FavoritesViewFactory, MovieDetailsViewFactory {}

protocol HomeCoordinatorFactory: HomeViewFactory, MovieDetailsViewFactory {}

protocol AuthCoordinatorFactory: LoginViewFactory,
                                 WelcomeViewFactory,
                                 PasswordRegistrationViewFactory,
                                 PersonalInfoRegistrationViewFactory {}
