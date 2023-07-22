//
//  SwiftUIView.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/18.
//

import SwiftUI

/// グリッドビューとスタックビューの違い
/// 一連ビューの"各行"に関係性があるかどうか
struct CompareGridWithStack: View {

    var body: some View {
        HStack(spacing: 120) {
            /// グリッドビュー
            /// 各行(GridRow)が関係性を持っており、それぞれのサイズや配置がお互いに影響を及ぼす
            VStack(spacing: 20) {
                Text("Grid").font(.largeTitle)
                Grid {
                    GridRow {
                        Color.green.frame(width: 100, height: 50)
                        ForEach(0..<2) { _ in
                            Color.green.frame(width: 50, height: 50)
                        }
                    }
                    GridRow {
                        ForEach(0..<3) { _ in
                            Color.green.frame(width: 50, height: 50)
                        }
                    }
                    GridRow {
                        ForEach(0..<3) { _ in
                            Color.green.frame(width: 50, height: 50)
                        }
                    }
                }
            }
            /// スタックビュー
            /// 各行(HStack)に関係性は無く、独立してレンダリングされる
            VStack(spacing: 20) {
                Text("Stack").font(.largeTitle)
                VStack {
                    HStack {
                        Color.red.frame(width: 100, height: 50)
                        ForEach(0..<2) { _ in
                            Color.red.frame(width: 50, height: 50)
                        }
                    }
                    HStack {
                        ForEach(0..<3) { _ in
                            Color.red.frame(width: 50, height: 50)
                        }
                    }
                    HStack {
                        ForEach(0..<3) { _ in
                            Color.red.frame(width: 50, height: 50)
                        }
                    }
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CompareGridWithStack()
    }
}
