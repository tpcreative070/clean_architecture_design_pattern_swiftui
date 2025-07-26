//
//  URL+Validation.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import UIKit

extension URL {
    enum Constants {
        static let imageFormats = ["jpg", "png", "gif", "svg", "webp"]
    }

    @MainActor func isImageType() -> Bool {
        UIApplication.shared.canOpenURL(self) &&
        Constants.imageFormats.contains(self.pathExtension.lowercased())
    }
}
