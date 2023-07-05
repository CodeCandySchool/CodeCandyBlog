//
//  BasicPasteButton.swift
//  PasteButtonSample
//
//  Created by Kensuke Nakagawa on 2023/07/01.
//

import SwiftUI

struct StringCopyAndPasteView: View {

    @State private var inputText: String = ""
    let copyText: String = "CodeCandy"

    var body: some View {
        VStack(spacing: 30) {

            HStack {
                Text(copyText)
                    .font(.title)

                Button {
                    // ボタンタップでStringデータをペーストボードにコピー保存
                    UIPasteboard.general.string = copyText
                } label: {
                    Image(systemName: "doc.on.doc.fill")
                        .font(.title)
                }
            }

            // 長押し操作によるペースト操作で、保存データをペーストできる
            TextField("文字を入力", text: $inputText)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
    }
}
