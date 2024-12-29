//
//  Back.swift
//  BuffaloJumpyKang
//
//  Created by Nicolae Chivriga on 23/12/2024.
//

import SwiftUI


struct Back: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image("backingBad")
                .resizable()
                .frame(width: 32, height: 28)
        }

    }
}
