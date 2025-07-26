//
//  ViewModel.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import Foundation


@MainActor
protocol ViewModel<State, Event>: ObservableObject where State: Equatable {
    associatedtype State
    associatedtype Event

    var state: State { get }

    func handle(_ event: Event)
}
