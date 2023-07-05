//
//  PasteButtonStylesView.swift
//  PasteButtonSample
//
//  Created by Kensuke Nakagawa on 2023/07/04.
//

import SwiftUI

/// PasteButtonのレイアウトカスタマイズ
struct PasteButtonStylesView: View {
    var body: some View {

        /// buttonBorderShape(iOS15+)
        VStack(spacing: 30) {

            PasteButton(payloadType: String.self) { strings in }
                .buttonBorderShape(.roundedRectangle)

            PasteButton(payloadType: String.self) { strings in }
                .buttonBorderShape(.roundedRectangle(radius: 0))

            PasteButton(payloadType: String.self) { strings in }
                .buttonBorderShape(.capsule)
        }

        /// labelStyle(iOS14+)
        VStack(spacing: 30) {

            PasteButton(payloadType: String.self) { strings in }
                .labelStyle(.titleAndIcon)

            PasteButton(payloadType: String.self) { strings in }
                .labelStyle(.titleOnly)

            PasteButton(payloadType: String.self) { strings in }
                .labelStyle(.iconOnly)
        }

        /// tint(iOS15+)
        VStack(spacing: 30) {

            PasteButton(payloadType: String.self) { strings in }
                .tint(.pink)

            PasteButton(payloadType: String.self) { strings in }
                .tint(.green)

            PasteButton(payloadType: String.self) { strings in }
                .tint(.black)
        }
    }
}

struct PasteButtonStylesView_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonStylesView()
    }
}
