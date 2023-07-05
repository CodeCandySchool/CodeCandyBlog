//
//  CopyButton.swift
//  PasteButtonSample
//
//  Created by Kensuke Nakagawa on 2023/07/01.
//

import SwiftUI

struct PasteButtonView: View {

    @State private var text: String = ""
    let string: String = "aaa"

    var body: some View {

        VStack {
            Text("あああ")
                .textSelection(.enabled)

            Button {
                UIPasteboard.general.string = string
            } label: {
                Text("コピー")
            }

            TextField("テキスト", text: $text)
        }

    }
}

struct CopyButton_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonView()
    }
}
