//
//  ProfileViewState.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import Foundation

struct ProfileViewState: Equatable {
    var username = ""
    var email = ""
    var name = ""
    var avatarLink = ""
    var newAvatarLink = ""
    var gender = Gender.male
    var birthdate = Date.now

    var emailError: String?
    var avatarLinkError: String?
    var errorMessage: String = ""

    var isUpdating = false
    var isDataChanged = false
    var isAlertPresenting = false

    var isEmailErrorShowing: Bool {
        email.isEmpty == false && emailError != nil
    }

    var isAvatarLinkErrorShowing: Bool {
        newAvatarLink.isEmpty == false && avatarLinkError != nil
    }

    var isSaveDisabled: Bool {
        email.isEmpty || emailError != nil || newAvatarLink.isEmpty ||
        avatarLinkError != nil || name.isEmpty || isDataChanged == false
    }
}

enum ProfileViewEvent {
    case onAppear
    case saveTapped
    case cancelTapped
    case logOutTapped

    case emailChanged(String)
    case avatarLinkChanged(String)
    case nameChanged(String)
    case genderChanged(Gender)
    case birthdateChanged(Date)
    case onAlertPresented(Bool)
}
