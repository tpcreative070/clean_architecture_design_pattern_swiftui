//
//  ImageCache.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

@MainActor
final class ImageCache {
    static private var cache = [URL: Image]()
    static subscript(url: URL?) -> Image? {
        get {
            guard let url else { return nil }
            return cache[url]
        }
        set {
            guard let url else { return }
            cache[url] = newValue
        }
    }
}
