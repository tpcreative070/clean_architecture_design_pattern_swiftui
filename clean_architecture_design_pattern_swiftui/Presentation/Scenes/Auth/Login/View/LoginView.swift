//
//  LoginView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//



import SwiftUI

struct LoginView: View {
    
    @StateObject private var viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        AuthView(
            style: .login,
            isFormButtonDisabled: viewModel.state.isLogInDisabled,
            screenTitle: LocalizedKey.Auth.Label.entrance,
            formButtonTitle: LocalizedKey.Auth.Action.logIn,
            calloutText: LocalizedKey.Auth.Callout.noAccountYet,
            calloutButtonTitle: LocalizedKey.Auth.Callout.registerAccount
        ) {
            Group {
                TextField("", text: username)
                    .formBorderedTextFieldStyle(
                        style: viewModel.state.isLoginErrorShowing ? .error : .default
                    )
                    .smallLabeled(LocalizedKey.Profile.username)
                
                SecureInputView(text: password, isErrorShowed: viewModel.state.isLoginErrorShowing)
                    .smallLabeled(LocalizedKey.Profile.password)
                
                if viewModel.state.isLoading {
                    BaseProgressView()
                }
            }
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
            .padding(.bottom, Constants.formBottomInset)
            .errorFooter(
                message: viewModel.state.loginError,
                isShowed: viewModel.state.isLoginErrorShowing
            )
        } formAction: {
            viewModel.handle(.logInTapped)
        } calloutAction: {
            viewModel.handle(.registerTapped)
        }
    }
    
    private enum Constants {
        static let formBottomInset: CGFloat = 5
    }
    
    private var username: Binding<String> {
        Binding(
            get: { viewModel.state.username },
            set: { viewModel.handle(.usernameChanged($0)) }
        )
    }
    
    private var password: Binding<String> {
        Binding(
            get: { viewModel.state.password },
            set: { viewModel.handle(.passwordChanged($0)) }
        )
    }
}
