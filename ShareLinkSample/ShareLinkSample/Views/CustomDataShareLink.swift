//
//  CustomDataShareLink.swift
//  ShareLinkSample
//
//  Created by Kensuke Nakagawa on 2023/06/07.
//
// 独自のカスタム構造体をシェア共有データとして利用する

import SwiftUI

// Transferableに準拠した独自のカスタムデータ
struct Photo: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }

    public var image: Image
    public var caption: String
}

// カスタムデータを用いたShareLinkサンプルビュー
struct PhotoView: View {

    // Transferableに準拠したカスタムデータ
    var photo: Photo

    var body: some View {
        photo.image
            .resizable()
            .scaledToFit()
            .toolbar {
                // カスタムデータをShareLinkに渡す
                ShareLink(
                    item: photo,
                    preview: SharePreview(
                        photo.caption,
                        image: photo.image)
                )
            }
    }
}

struct CustomDataShareLinkView: View {
    var body: some View {
        NavigationStack {
            PhotoView(photo: Photo(image: Image("sampleImage"),
                                   caption: "シューズ（赤）")
            )
        }
    }
}
