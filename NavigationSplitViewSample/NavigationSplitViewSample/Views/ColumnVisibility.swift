//
//  ColumnVisibility.swift
//  NavigationSplitViewSample
//
//  Created by Kensuke Nakagawa on 2023/08/19.
//

import SwiftUI




/// 各カラムの表示/非表示をプログラムで制御
struct ColumnVisibility: View {

    // カラムの表示状態を管理するプロパティ
    // 初期値として設定したオプションが、起動時の初期表示となる（一部のプラットフォームでは反映されない）
    @State private var columnVisibility = NavigationSplitViewVisibility.detailOnly

    var body: some View {
        // 3カラム
        NavigationSplitView(columnVisibility: $columnVisibility) {
            SideBarView()
        } content: {
            ContentView()
        } detail: {
            VStack(spacing: 40) {
                // プログラムでカラムの表示状態をコントロールできる
                Button("Detailのみを表示") { columnVisibility = .detailOnly }
                Button("ContentとDetailを表示") { columnVisibility = .doubleColumn }
                Button("全てのカラムを表示") { columnVisibility = .all }
            }
            .font(.title)
        }
    }
}

struct ColumnVisibility_Previews: PreviewProvider {
    static var previews: some View {
        ColumnVisibility()
    }
}
