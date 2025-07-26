//
//  AuthScreenTitle.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct AuthScreenTitle: View {
    
    let text: LocalizedStringKey
    
    var body: some View {
        Text(text)
            .font(.title2)
            .bold()
    }
}

