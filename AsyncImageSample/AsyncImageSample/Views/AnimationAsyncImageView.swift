//
//  AnimationAsyncImageView.swift
//  AsyncImageSample
//
//  Created by Kensuke Nakagawa on 2023/06/21.
//

import SwiftUI

struct AnimationAsyncImageView: View {
    
    let urlString: String

    var body: some View {

        /// インスタンス引数「transition:」にトランジションを渡すことで
        /// ビューの出し分けにアニメーションを付与できる
        /// この場合、扱うデータは「AsyncImagePhase」型となる
        AsyncImage(url: URL(string: urlString),
                   transaction: .init(animation: .easeIn)
        ) { phase in

            if let image = phase.image {
                // ロード成功時...
                image.resizable()

            } else if phase.error != nil {
                // ロード失敗時...
                Text("画像取得エラー")

            } else {
                // ロード中...
                Text("画像取得中...")
            }
        }
    } // body
}
