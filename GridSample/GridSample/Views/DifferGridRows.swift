//
//  DifferGridRows.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/14.
//

import SwiftUI

/// 列数(要素の数)が異なるGridRow同士のビュー配置ルールについて
/// 最も列数が多いGridRowを基準に、左から順にビューが配置される
/// 要素が足りない行には空のセルが設けられる
struct DifferColumnGridRows: View {
    var body: some View {
        
        Grid {
            GridRow {
                Text("Row 1")
                ForEach(0 ..< 2) { _ in Color.red }
            }
            .frame(width: 50, height: 50)

            GridRow {
                Text("Row 2")
                ForEach(0 ..< 5) { _ in Color.green }
            }
            .frame(width: 50, height: 50)

            GridRow {
                Text("Row 3")
                ForEach(0 ..< 3) { _ in Color.blue }
            }
            .frame(width: 50, height: 50)
        }
    }
}

struct DifferGridRows_Previews: PreviewProvider {
    static var previews: some View {
        DifferColumnGridRows()
    }
}

