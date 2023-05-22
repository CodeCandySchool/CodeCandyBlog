//
//  CustomPartsGeometryView.swift
//  GeometryReaderSample
//
//  Created by Kensuke Nakagawa on 2023/05/22.
// カスタムパーツ側にGeometryReaderが定義されている場合の例

import SwiftUI

struct CustomPartsGeometryView: View {
    var body: some View {

        VStack { // ⬅︎ CustomRectangleの親ビュー
            CustomRectangle()
        }
        .frame(width: 300, height: 200) // ✅

    } // body
} // View

// カスタムViewパーツ
struct CustomRectangle: View {
    var body: some View {

        GeometryReader { geometry in // ⬅︎ この場合、親ビューは呼び出し先のVStack
            Rectangle()
                .foregroundColor(.green)
                .frame(width: geometry.size.width, // ⬅︎ 300
                       height: geometry.size.height) // ⬅︎ 200
        }
    }
}
