//
//  TwoColumnNavigationSplitView.swift
//  NavigationSplitViewSample
//
//  Created by Kensuke Nakagawa on 2023/08/18.
//




import SwiftUI

/// 選択可能なサイドバーによる詳細ビューの切り替え実装サンプル
struct TwoColumnNavigationSplitView: View {

    let colors: [Color] = [.orange, .pink, .blue]
    @State private var selectionColor: Color?

    var body: some View {
        NavigationSplitView {
            // 選択可能なリストサイドバー
            List(colors, id: \.self, selection: $selectionColor) { color in
                Text(color.description)
            }
        } detail: {
            if let selectionColor {
                // リスト選択時に表示
                selectionColor
            } else {
                // 未選択時に表示
                Text("カラーを選択してください。")
            }
        }
    }
}

struct TwoColumnNavigationSplitView_Previews: PreviewProvider {
    static var previews: some View {
        TwoColumnNavigationSplitView()
    }
}
