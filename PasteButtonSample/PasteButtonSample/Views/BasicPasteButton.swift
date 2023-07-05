//
//  BasicPasteButton.swift
//  PasteButtonSample
//
//  Created by Kensuke Nakagawa on 2023/07/01.
//

import SwiftUI

struct StringPasteButton: View {

    @State private var pastedText: String = ""

    var body: some View {
        PasteButton(payloadType: String.self) { strings in
            pastedText = strings[0]
        }
    }
}

struct BasicPasteButton_Previews: PreviewProvider {
    static var previews: some View {
        StringPasteButton()
    }
}
