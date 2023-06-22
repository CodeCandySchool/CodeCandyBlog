//
//  BasicAsyncImage.swift
//  AsyncImageSample
//
//  Created by Kensuke Nakagawa on 2023/06/21.
//

import SwiftUI

struct BasicAsyncImage: View {

    let urlString: String

    var body: some View {

        // URLデータを取得後、AsyncImageにURLを渡して画像を表示
        if let url = URL(string: urlString) {

            AsyncImage(url: url) { image in
                // 取得した画像ビュー
                image.resizable()

            } placeholder: {
                // プレースホルダーのビュー
                ProgressView()
            }
        }
    } // body
} // View
