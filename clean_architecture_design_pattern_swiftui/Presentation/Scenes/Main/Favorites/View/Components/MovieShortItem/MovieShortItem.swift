//
//  MovieShortItem.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import SwiftUI

struct MovieShortItem: View {

    let viewModel: MovieShortItemViewModel

    var body: some View {
        VStack(alignment: .leading) {
            MovieAsyncImage(urlString: viewModel.imageUrl)
                .clipShape(.rect(cornerRadius: Constants.cornerRadius))
                .overlay(alignment: .topTrailing, content: {
                    if let rating = viewModel.rating {
                        RatingTagView(style: .titleAndIcon, value: rating)
                            .padding([.top, .trailing], Constants.ratingTagInsets)
                    }
                })

            if let name = viewModel.name {
                Text(name)
                    .font(.callout)
                    .lineLimit(Constants.nameLineLimit)
            }
        }
    }

    private enum Constants {
        static let nameLineLimit = 1
        static let cornerRadius: CGFloat = 7
        static let ratingTagInsets: CGFloat = 6
    }
}
