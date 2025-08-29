//
//  MoviePosterView.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import SwiftUI

struct MoviePosterView: View {
    
    let imageUrl: String?
    let safeAreaInsetTop: CGFloat
    
    var body: some View {
        MovieAsyncImage(urlString: imageUrl, isShowingProgressView: true)
            .frame(height: Constants.posterHeight)
            .scaledToFill()
            .clipped()
            .overlay {
                LinearGradient(
                    colors: [.background, .background.opacity(Constants.gradientEndOpacity)],
                    startPoint: .bottom,
                    endPoint: .center
                )
            }
            .overlay { GeometryReader { geometry in
                Color.background
                    .opacity(1 - Double(geometry.frame(in: .global).maxY
                                        / (Constants.posterHeight + safeAreaInsetTop)))
            }}
    }
    
    private enum Constants {
        static let posterHeight: CGFloat = 520
        static let gradientEndOpacity: CGFloat = 0
    }
}
