//
//  ProfileLocalDataSource.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation
@preconcurrency import RealmSwift

final class ProfileLocalDataSource {

    private let realmProvider = RealmProvider()

    @RealmActor
    func fetchProfile() async -> ProfileObject? {
        guard let storage = await realmProvider.realm() else { return nil }
        return storage.objects(ProfileObject.self).first
    }

    @RealmActor
    func saveProfile(_ profileObject: ProfileObject) async {
        guard let storage = await realmProvider.realm() else { return }

        storage.writeAsync {
            storage.add(profileObject, update: .all)
        }
    }

    @RealmActor
    func deleteProfile() async {
        guard let storage = await realmProvider.realm() else { return }

        storage.writeAsync {
            storage.delete(storage.objects(ProfileObject.self))
        }
    }
}
