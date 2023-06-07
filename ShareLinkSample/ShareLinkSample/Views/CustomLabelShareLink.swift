//
//  IconShareLink.swift
//  ShareLinkSample
//
//  Created by Kensuke Nakagawa on 2023/06/05.
//

import SwiftUI

struct CustomLabelShareLink: View {
    var body: some View {
        ShareLink(item: URL(
            string: "https://developer.apple.com/xcode/swiftui/")!
        ) {
            Label("シェアする", systemImage: "message.fill")
        }
    }
}
