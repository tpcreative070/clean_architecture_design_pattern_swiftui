//
//  DatePickerField.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 26/7/25.
//

import SwiftUI

struct DatePickerField: View {

    @Binding var date: Date

    var body: some View {
        Text(DateFormatter.dateOnly.string(from: date))
            .frame(height: Constants.Label.height)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, Constants.Label.leadingInset)
            .overlay(alignment: .trailing) {
                Image(systemName: Constants.CalendarImage.name)
                    .foregroundStyle(.secondary)
                    .padding(.trailing, Constants.CalendarImage.trailingInset)
                    .overlay {
                        DatePicker("",
                                   selection: $date,
                                   in: ...Date.now,
                                   displayedComponents: .date
                        )
                        .tintColor(.appAccent)
                        .labelsHidden()
                        .datePickerStyle(.compact)
                        .blendMode(.destinationOver)
                        .padding(.leading, Constants.DatePicker.leadingInset)
                    }
                    .clipped()
            }
            .formItemBackground()
    }

    private enum Constants {
        enum Label {
            static let height: CGFloat = 41
            static let leadingInset: CGFloat = 12
        }

        enum CalendarImage {
            static let name = "calendar"
            static let trailingInset: CGFloat = 10
        }

        enum DatePicker {
            static let leadingInset: CGFloat = 77
        }
    }
}

