//
//  Untitled.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


enum FavoritesViewState: Equatable {
    case idle
    case loading
    case error(String)
    case loaded(ViewData)

    struct ViewData: Equatable {
        let shouldShowPlaceholder: Bool
        let movieItems: [MovieShortItemViewModel]
    }
}

enum FavoritesViewEvent {
    case onAppear
    case onSelectMovie(String)
}
