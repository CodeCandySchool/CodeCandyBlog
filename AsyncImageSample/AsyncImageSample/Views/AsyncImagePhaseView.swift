//
//  AsyncImagePhaseView.swift
//  AsyncImageSample
//
//  Created by Kensuke Nakagawa on 2023/06/21.
//

import SwiftUI

// スイッチ判定による読み込みフェーズの取得
struct AsyncImagePhaseView: View {

    var body: some View {

        /// クロージャ引数「phase」に返ってきた値によってビュー表示を分岐する
        AsyncImage(url: URL(string: "https://example.com/icon.png")) { phase in

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

        // スイッチ判定による読み込みフェーズの取得
        AsyncImage(url: URL(string: "https://example.com/icon.png")) { phase in

                switch phase {

                case .success(let image):
                    image.resizable()

                case .empty:
                    Image(systemName: "Placeholder Image")

                case .failure(_):
                    Image(systemName: "Error Image")

                @unknown default:
                    Image(systemName: "Placeholder Image")

                }
            }
    } // body
} // View

struct AsyncImagePhaseView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImagePhaseView()
    }
}
