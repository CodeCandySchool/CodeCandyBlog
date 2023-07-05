//
//  PasteButtonView.swift
//  PasteButtonSample
//
//  Created by Kensuke Nakagawa on 2023/07/04.
//

import SwiftUI

/// SwiftUIのペーストボタンビュー(iOS16+)
struct PasteButtonView: View {

    var body: some View {

        // ペーストボードからStringデータを取得
        PasteButton(payloadType: String.self) { strings in
            if let pasteString = strings.first {
                print(pasteString)
            }
        }

        // ペーストボードからImageデータを取得
        PasteButton(payloadType: Image.self) { images in
            if let pasteImage = images.first {
                print(pasteImage)
            }
        }

        // ペーストボードからColorデータを取得
        PasteButton(payloadType: Color.self) { colors in
            if let pasteColor = colors.first {
                print(pasteColor)
            }
        }
    }
}

struct PasteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonView()
    }
}
