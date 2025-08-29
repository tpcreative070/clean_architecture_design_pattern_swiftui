//
//  AvatarAsyncImage.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import SwiftUI

struct AvatarAsyncImage: View {

    let size: CGFloat
    let url: URL?

    init(size: CGFloat, urlString: String?) {
        self.size = size
        self.url = URL(string: urlString ?? "")
    }

    var body: some View {
        CacheAsyncImage(url: url) { image in
            image
                .resizable()
        } placeholder: {
            Image(.avatarPlaceholder)
                .resizable()
        }
        .frame(width: size, height: size)
        .clipShape(.circle)
    }
}
