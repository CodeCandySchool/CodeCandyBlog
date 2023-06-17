//
//  MuliLineTextField.swift
//  MultiLineTextField
//
//  Created by Kensuke Nakagawa on 2023/06/16.
//

import SwiftUI

struct ComparisonTextField: View {

    @State private var inputHorizontal: String = ""
    @State private var inputVertical: String = ""

    var body: some View {

        VStack(spacing: 50) {

            VStack {
                Text(".horizontal")
                TextField(
                    "単数行のテキストフィールド",
                    text: $inputHorizontal,
                    axis: .horizontal
                )
                .textFieldStyle(.roundedBorder)
            }

            VStack {
                Text(".vertical")
                TextField(
                    "複数行のテキストフィールド",
                    text: $inputVertical,
                    axis: .vertical
                )
                .textFieldStyle(.roundedBorder)
            }

        }
        .frame(width: 300)
    }
}

struct MultiLineTextField_Previews: PreviewProvider {
    static var previews: some View {
        ComparisonTextField()
    }
}
