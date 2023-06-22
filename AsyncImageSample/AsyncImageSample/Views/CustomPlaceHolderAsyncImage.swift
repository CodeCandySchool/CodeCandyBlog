//
//  CustomPlaceHolderAsyncImage.swift
//  AsyncImageSample
//
//  Created by Kensuke Nakagawa on 2023/06/21.
//

import SwiftUI

// プレースホルダーのカスタム
struct CustomPlaceHolderAsyncImage: View {

    let urlString: String
    let imageWidth: CGFloat
    let imageHeight: CGFloat

    var body: some View {

        // URLデータを取得後、AsyncImageにURLを渡して画像を表示
        if let url = URL(string: urlString) {


            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)

            } placeholder: {
                // 任意でカスタマイズ可能
                Rectangle()
                    .fill(.gray)
                    .frame(width: imageWidth, height: imageHeight)
                    .overlay {
                        VStack(spacing: 20) {
                            Image(systemName: "photo.fill")
                                .font(.title)

                            Text("画像を取得中です...")
                                .font(.footnote)
                                .tracking(5)
                        }
                    }
            }


        }
    } // body
} // View
