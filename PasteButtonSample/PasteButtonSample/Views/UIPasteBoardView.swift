//
//  CopyButton.swift
//  PasteButtonSample
//
//  Created by Kensuke Nakagawa on 2023/07/01.
//

import SwiftUI

/// UIPasteboardを使ったコピー&ペースト操作の実装(iOS3+)
struct UIPasteBoardView: View {

    @State private var inputText: String = ""

    @State private var text: String?
    @State private var image: UIImage?
    @State private var url: URL?

    var body: some View {

        /// -- コピー操作の実装 --
        Button {
            // ペーストボードにデータをコピー保持する
            UIPasteboard.general.string = text
            UIPasteboard.general.image = image
            UIPasteboard.general.url = url
        } label: {
            // ...
        }

        /// -- ペースト操作の実装 --
        Button {
            // UIPasteboardにアクセスし、ペーストボード内のStringデータを取得する
            if let pasteText = UIPasteboard.general.string {
                print(pasteText)
            }

            // UIPasteboardにアクセスし、ペーストボード内のUIImageデータを取得する
            if let pasteImage = UIPasteboard.general.image {
                print(pasteImage)
            }

            // UIPasteboardにアクセスし、ペーストボード内にStringデータが存在するかBool値で判定する
            if UIPasteboard.general.hasStrings {
                // 値が存在する
            } else {
                // 値が存在しない
            }

        } label: {
            Image(systemName: "")
                .font(.title)
        }
    }
}

struct CopyButton_Previews: PreviewProvider {
    static var previews: some View {
        UIPasteBoardView()
    }
}
