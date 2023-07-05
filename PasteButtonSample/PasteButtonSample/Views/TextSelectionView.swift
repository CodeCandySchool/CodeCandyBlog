//
//  TextSelectionView.swift
//  PasteButtonSample
//
//  Created by Kensuke Nakagawa on 2023/07/01.
//

import SwiftUI

/// ユーザーが対象ビュー内のテキストを選択できるかを制御する修飾子(iOS15+)
struct TextSelectionView: View {
    var body: some View {

        // 対象テキストの長押し選択操作が有効になる
        Text("CodeCandy")
            .textSelection(.enabled)

        // スタックビューに付与した場合、保持するテキスト全てに適用される
        VStack {
            Text("CodeCandy")
            Text("CodeCandy")
            Text("CodeCandy")
        }
        .textSelection(.enabled)
    }
}

struct TextSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionView()
    }
}
