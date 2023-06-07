//
//  CustomShareSheet.swift
//  ShareLinkSample
//
//  Created by Kensuke Nakagawa on 2023/06/07.
//
// シェアリンクの共有シートを一部カスタマイズ

import SwiftUI

struct CustomShareSheet: View {

    // Transferableに準拠した独自のカスタムデータ
    let photo = Photo(image: Image("sampleImage"), caption: "シューズ")

    var body: some View {

        // 共有オブジェクトがString値であれば、そのまま共有シート上に表示
//        ShareLink(item: "CodeCandy")

        // 共有シート用のプレビューデータを設定
        ShareLink(item: "CodeCandy",
                  preview: SharePreview("プレビュー用のMessage",
                                        image: photo.image)
        )
    }
}

struct CustomShareSheet_Previews: PreviewProvider {
    static var previews: some View {
        CustomShareSheet()
    }
}
