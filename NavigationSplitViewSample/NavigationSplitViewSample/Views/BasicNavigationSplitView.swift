//
//  BasicNavigationSplitView.swift
//  NavigationSplitViewSample
//
//  Created by Kensuke Nakagawa on 2023/08/18.
//

import SwiftUI

/// NavigationSplitViewのカラム数選択によるセクション構築
struct BasicNavigationSplitView: View {
    var body: some View {

        // 2カラム
        // sidebar > detail
        NavigationSplitView {
            SideBarView()
        } detail: {
            DetailView()
        }

        // 3カラム
        // sidebar > content > detail
        NavigationSplitView {
            SideBarView()
        } content: {
            ContentView()
        } detail: {
            DetailView()
        }
    }
}

struct BasicNavigationSplitView_Previews: PreviewProvider {
    static var previews: some View {
        BasicNavigationSplitView()
    }
}
