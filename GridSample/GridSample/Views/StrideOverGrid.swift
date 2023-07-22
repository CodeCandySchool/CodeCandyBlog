//
//  StrideOverGrid.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/17.
//

import SwiftUI

/// 指定した数のセル/列を跨ぐ
struct StrideOverGrid: View {
    var body: some View {

        Grid {
            GridRow {
                Color.red
                    .gridCellColumns(2) // 👈 指定数のセル/列を跨ぐ
            }
            .frame(width: 100, height: 50)

            GridRow {
                ForEach(0 ..< 4) { _ in Color.green }
            }
            .frame(width: 50, height: 50)
        }
    }
}

/// グリッド内の全てのセル/列を跨ぐ単一のビュー
/// 配置する単一のビューがグリッドのスペースを超えている場合、
/// 余剰分に合わせてグリッドのスペース幅も広くなる
struct StrideAllOverGrid: View {
    var body: some View {

        Grid {
            GridRow {
                ForEach(0 ..< 4) { _ in Color.red }
            }
            .frame(width: 50, height: 50)

            Text("CodeCandy") // 👈 単一のビュー
            Divider()
                .gridCellUnsizedAxes(.horizontal) // 👈 グリッド本来のスペース内に収める

            GridRow {
                ForEach(0 ..< 4) { _ in Color.green }
            }
            .frame(width: 50, height: 50)
        }
    }
}
