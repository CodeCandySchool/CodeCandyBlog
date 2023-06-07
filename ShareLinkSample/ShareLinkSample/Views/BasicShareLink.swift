//
//  BasicShareLink.swift
//  ShareLinkSample
//
//  Created by Kensuke Nakagawa on 2023/06/05.
//
// シェアリンクのシンプルな記述

import SwiftUI

struct BasicShareLink: View {
    var body: some View {

        /// URL シェア
        ShareLink(item: URL(
            string: "https://developer.apple.com/xcode/swiftui/")!
        )

        /// String シェア
        ShareLink(item: "CodeCandy")
    }
}
