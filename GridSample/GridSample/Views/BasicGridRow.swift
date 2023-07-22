//
//  BasicGridRow.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/14.
//

import SwiftUI

/// GridRowの挙動について
/// GridRow内のビュー要素は、HStackのような挙動で横に配置される
/// Grid内に置かれた複数GridRowは、VStackのような挙動で縦に配置される
struct BasicGridRow: View {
    var body: some View {

        Grid {
            // 一行目
            GridRow {
                ForEach(0..<4) { _ in Rectangle() }
            }
            .foregroundColor(.red)
            .frame(width: 50, height: 50)

            // 二行目
            GridRow {
                ForEach(0..<4) { _ in Rectangle() }
            }
            .foregroundColor(.green)
            .frame(width: 50, height: 50)

            // 三行目
            GridRow {
                ForEach(0..<4) { _ in Rectangle() }
            }
            .foregroundColor(.blue)
            .frame(width: 50, height: 50)
        }
    }
}

struct BasicGridRow_Previews: PreviewProvider {
    static var previews: some View {
        BasicGridRow()
    }
}
