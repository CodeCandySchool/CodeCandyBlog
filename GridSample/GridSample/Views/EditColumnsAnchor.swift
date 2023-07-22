//
//  EditColumnsAnchor.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/21.
//

import SwiftUI

/// グリッド内の要素一つの位置ポイントを指定する
/// 要素が持つセル領域の中で、左上端を始点にポイント座標を設定する
/// 指定がない場合、デフォルトで中央(.center)に配置
struct EditColumnsAnchor: View {
    var body: some View {

        Grid(horizontalSpacing: 1, verticalSpacing: 1) {
            GridRow {
                Color.red.frame(width: 60, height: 60)
                Color.red.frame(width: 60, height: 60)
            }
            GridRow {
                Color.red.frame(width: 60, height: 60)
                Color.blue.frame(width: 10, height: 10)
                    .gridCellAnchor(UnitPoint(x: 0.25, y: 0.75))
//                    .gridCellAnchor(.bottomLeading) // 👈このような位置指定も可能
            }
        }
    }
}

struct EditColumnsAnchor_Previews: PreviewProvider {
    static var previews: some View {
        EditColumnsAnchor()
    }
}
