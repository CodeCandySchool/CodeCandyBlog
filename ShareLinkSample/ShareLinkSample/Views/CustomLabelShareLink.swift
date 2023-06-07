//
//  IconShareLink.swift
//  ShareLinkSample
//
//  Created by Kensuke Nakagawa on 2023/06/05.
//
// シェアリンクボタンの外観をカスタマイズ

import SwiftUI

struct CustomLabelShareLink: View {
    var body: some View {

        VStack(spacing: 30) {

//            // デフォルトのシェアボタン
            ShareLink(item: URL(
                string: "https://developer.apple.com/xcode/swiftui/")!
            )

            // シェアボタンのラベル全体を変更
            ShareLink(item: URL(
                string: "https://developer.apple.com/xcode/swiftui/")!
            ) {
                Label("ラベル全体を変更", systemImage: "message.fill")
            }

            // シェアボタンのタイトルのみ変更
            ShareLink("タイトルのみ変更", item: URL(
                string: "https://developer.apple.com/xcode/swiftui/")!
            )
        }
    }
}
