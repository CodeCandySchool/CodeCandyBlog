//
//  GridSpacing.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/22.
//

import SwiftUI

/// グリッド要素のスペース間隔を指定
struct GridSpacing: View {
    var body: some View {

        Grid(horizontalSpacing: 1, verticalSpacing: 1) { // 👈

            GridRow {
                ForEach(0 ..< 4) { _ in Color.red }
            }
            .frame(width: 50, height: 50)

            GridRow {
                ForEach(0 ..< 4) { _ in Color.green }
            }
            .frame(width: 50, height: 50)

            GridRow {
                ForEach(0 ..< 4) { _ in Color.blue }
            }
            .frame(width: 50, height: 50)
        }
    }
}
