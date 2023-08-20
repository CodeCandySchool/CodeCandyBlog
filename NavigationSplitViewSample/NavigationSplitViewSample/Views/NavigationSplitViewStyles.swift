//
//  NavigationSplitViewStyles.swift
//  NavigationSplitViewSample
//
//  Created by Kensuke Nakagawa on 2023/08/20.
//

import SwiftUI

/// NavigationSplitViewのスタイル指定
struct NavigationSplitViewStyles: View {
    var body: some View {
        // 3カラム
        // sidebar > content > detail
        NavigationSplitView {
            SideBarView()
        } content: {
            ContentView()
        } detail: {
            DetailView()
        }
        // サイドカラムを表示するときに、詳細コンテンツのサイズを維持する
        .navigationSplitViewStyle(.prominentDetail)
        // サイドカラムを表示する際に、詳細コンテンツのサイズを縮小してスペースを確保する
        .navigationSplitViewStyle(.balanced)
        // 現在のコンテキストに基づいて自動的に外観を解決する
        .navigationSplitViewStyle(.automatic)
    }
}

#Preview {
    NavigationSplitViewStyles()
}
