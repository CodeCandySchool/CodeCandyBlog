//
//  ColumnWidth.swift
//  NavigationSplitViewSample
//
//  Created by Kensuke Nakagawa on 2023/08/20.
//

import SwiftUI





/// 各カラムの表示幅を固定または可変で指定
/// 一部のプラットフォームでのみオプションが反映される
struct ColumnWidth: View {
    var body: some View {

        NavigationSplitView {
            SideBarView()
                .navigationSplitViewColumnWidth(100) // 固定
        } content: {
            ContentView()
                // min: 最小, ideal: 理想, max: 最大
                .navigationSplitViewColumnWidth(
                    min: 150, ideal: 300, max: 400) // 可変
        } detail: {
            DetailView()
        }
    }
}





struct ColumnWidth_Previews: PreviewProvider {
    static var previews: some View {
        ColumnWidth()
    }
}
