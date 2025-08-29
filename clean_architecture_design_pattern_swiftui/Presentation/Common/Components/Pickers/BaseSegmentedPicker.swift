//
//  BaseSegmentedPicker.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//


import SwiftUI

struct BaseSegmentedPicker<SelectionValue, Content>: View where SelectionValue: Hashable, Content: View {
    
    @Binding var selection: SelectionValue
    let content: () -> Content
    
    init(selection: Binding<SelectionValue>, content: @escaping () -> Content) {
        _selection = selection
        self.content = content
    }
    
    var body: some View {
        Picker("", selection: $selection) {
            content()
        }
        .labelsHidden()
        .pickerStyle(.segmented)
        .onAppear {
            updateAppearance()
        }
    }

    @MainActor func updateAppearance() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .white
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.lightGray], for: .normal)
    }
}
