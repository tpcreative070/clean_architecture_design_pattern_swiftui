//
//  MovieDetailsViewState.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

enum MovieDetailsViewState: Equatable {
    case idle
    case loading
    case error(String)
    case loaded(ViewData)

    struct ViewData: Equatable {
        var reviewDialog: ReviewDialogViewModel?
        var selectedReview: ReviewViewModel?
        var movie: MovieDetailsView.Model

        var isConfirmationDialogPresenting = false
        var isReviewDialogPresented: Bool {
            reviewDialog != nil
        }
    }
}

enum MovieDetailsViewEvent {
    case onAppear
    case favoriteTapped

    case addReviewTapped
    case editReviewTapped
    case deleteReviewTapped

    case reviewOptionsTapped(String)
    case onConfirmationDialogPresented(Bool)
    case reviewDialog(ReviewDialogViewEvent)
}
