//
//  PrifferdColumn.swift
//  NavigationSplitViewSample
//
//  Created by Kensuke Nakagawa on 2023/08/19.
//

import SwiftUI





// SwiftUIが構築するカラムの表示優先度をコントロールする
struct PreferredColumn: View {

    // 詳細ビューを優先表示として設定
    @State private var preferredColumn = NavigationSplitViewColumn.detail

    var body: some View {
        NavigationSplitView(preferredCompactColumn: $preferredColumn) {
            Color.yellow
        } detail: {
            Color.blue
        }
    }
}



struct PrifferdColumn_Previews: PreviewProvider {
    static var previews: some View {
        PreferredColumn()
    }
}
