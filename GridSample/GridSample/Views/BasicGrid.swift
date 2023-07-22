//
//  BasicGrid.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/14.
//




import SwiftUI

/// Gridのシンプルな実装コード
struct BasicGrid: View {
    var body: some View {
        Grid {
            GridRow {
                ForEach(0..<3) { _ in Color.red }
            }
            /// GridRowに与えた制御は、各要素全てに対して適用される
            .frame(width: 50, height: 50)
        }
    }
}

struct BasicGrid_Previews: PreviewProvider {
    static var previews: some View {
        BasicGrid()
    }
}
