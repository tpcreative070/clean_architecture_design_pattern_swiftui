//
//  WelcomeView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import SwiftUI

struct WelcomeView: View {

    @StateObject private var viewModel: WelcomeViewModel

    init(viewModel: WelcomeViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack(spacing: Constants.ContentStack.spacing) {
            Image(.amico)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: Constants.AmicoImage.height)
                .padding(.top, Constants.AmicoImage.topInset)

            VStack(spacing: Constants.DescriptionStack.spacing) {
                Text(LocalizedKey.Welcome.title)
                    .bold()
                    .font(.title2)

                Text(LocalizedKey.Welcome.body)
                    .font(.body)
            }
            .multilineTextAlignment(.center)
            .padding()

            VStack(spacing: Constants.ButtonStack.spacing) {
                Button(LocalizedKey.Auth.Label.registration) {
                    viewModel.handle(.registrationTapped)
                }
                .baseButtonStyle()

                Button(LocalizedKey.Auth.Action.logIn) {
                    viewModel.handle(.logInTapped)
                }
                .baseButtonStyle(isProminent: false)
            }
            .padding(.horizontal)

            Spacer()
        }
        .backgroundColor()
        .appNavigationTitle()
    }
    
    private enum Constants {
        enum ContentStack {
            static let spacing: CGFloat = 40
        }

        enum AmicoImage {
            static let height: CGFloat = 338
            static let topInset: CGFloat = 20
        }

        enum DescriptionStack {
            static let spacing: CGFloat = 10
        }

        enum ButtonStack {
            static let spacing: CGFloat = 15
        }
    }
}
