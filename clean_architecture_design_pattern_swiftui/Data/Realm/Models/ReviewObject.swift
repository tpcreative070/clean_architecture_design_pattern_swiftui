//
//  ReviewObject.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation
import RealmSwift

final class ReviewObject: Object {
    @Persisted var id: String
    @Persisted var rating: Int
    @Persisted var reviewText: String?
    @Persisted var isAnonymous: Bool
    @Persisted var createDateTime: Date
    @Persisted var author: UserShortObject?

    convenience init(_ review: Review) {
        self.init()

        id = review.id
        rating = review.rating
        reviewText = review.reviewText
        isAnonymous = review.isAnonymous
        createDateTime = review.createDateTime
        if let author = review.author {
            self.author = UserShortObject(author)
        }
    }

    func toDomain() -> Review {
        Review(
            id: id,
            rating: rating,
            reviewText: reviewText,
            isAnonymous: isAnonymous,
            createDateTime: createDateTime,
            author: author?.toDomain()
        )
    }
}
