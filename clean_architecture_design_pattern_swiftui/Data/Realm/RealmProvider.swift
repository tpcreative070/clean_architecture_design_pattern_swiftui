//
//  RealmProvider.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 24/7/25.
//

import Foundation

import RealmSwift

final class RealmProvider {

    private var realm: Realm?

    func realm() async -> Realm? {
        if realm == nil {
            let config = Realm.Configuration(deleteRealmIfMigrationNeeded: true)
            realm = try? await Realm(configuration: config, actor: RealmActor.shared)
        }

        return realm
    }
}
