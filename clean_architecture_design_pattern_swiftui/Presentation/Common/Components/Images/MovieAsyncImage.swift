//
//  MovieAsyncImage.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import SwiftUI

struct MovieAsyncImage: View {

    let url: URL?
    let shouldShowProgressView: Bool

    init(urlString: String?, isShowingProgressView: Bool = false) {
        self.url = URL(string: urlString ?? "")
        self.shouldShowProgressView = isShowingProgressView
    }

    var body: some View {
        CacheAsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                if shouldShowProgressView {
                    ProgressView()
                        .tint(.appAccent)
                } else {
                    placeholder
                }

            case .success(let image):
                image
                    .resizable()
                    .transition(.scale(scale: Constants.scale, anchor: .center))

            case .failure:
                placeholder

            @unknown default:
                EmptyView()
            }
        }
    }

    private var placeholder: some View {
        Image(.moviePlaceholder)
            .resizable()
    }

    private enum Constants {
        static let scale = 0.1
    }
}
