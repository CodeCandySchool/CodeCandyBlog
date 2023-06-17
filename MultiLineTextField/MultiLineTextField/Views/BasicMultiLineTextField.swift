//
//  BasicMultiLineTextField.swift
//  MultiLineTextField
//
//  Created by Kensuke Nakagawa on 2023/06/16.
//

import SwiftUI

struct BasicMultiLineTextField: View {

    @State private var inputText: String = ""

    var body: some View {

        VStack {
            TextField(
                "複数行のテキストフィールド",
                text: $inputText,
                axis: .vertical
            )
            .frame(width: 300)
            .textFieldStyle(.roundedBorder)

            Button("print出力") {
                print(inputText)
            }
        }
    }
}
