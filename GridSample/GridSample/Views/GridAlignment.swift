//
//  GridAlignment.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/17.
//

import SwiftUI

/// グリッド全体の配置ルールを指定
struct GridAlignment: View {
    var body: some View {
        // 「配置ルール」「要素間のスペース」を指定できる
        Grid(alignment: .leading) { // 👈

            GridRow {
                ForEach(0 ..< 2) { _ in Color.red }
            }
            .frame(width: 70, height: 50)

            GridRow {
                ForEach(0 ..< 2) { _ in Color.green }
            }
            .frame(width: 50, height: 50)

            GridRow {
                ForEach(0 ..< 2) { _ in Color.blue }
            }
            .frame(width: 100, height: 50)
        }
    }
}

/// GridRow(alignment:)に行ごとの"垂直方向"の配置ルールを指定
/// この設定はGrid(alignment:)の全体垂直設定を上書きできる
/// どちらにも垂直方向の指定がない場合、中央(.center)
struct GridHorizontalAlignment: View {
    var body: some View {

        Grid(alignment: .trailing) {
            GridRow(alignment: .top) { // 👈 トップ
                Text("Top")
                Color.red.frame(width: 1, height: 50)
                Color.blue.frame(width: 50, height: 1)
            }
            GridRow { // 👈 デフォルト
                Text("Center")
                Color.red.frame(width: 1, height: 50)
                Color.blue.frame(width: 50, height: 1)
            }
            GridRow(alignment: .bottom) { // 👈 ボトム
                Text("Bottom")
                Color.red.frame(width: 1, height: 50)
                Color.blue.frame(width: 50, height: 1)
            }
        }
    }
}

/// グリッド内の同列要素に対して"水平方向"の配置ルールを指定
/// この設定はGrid(alignment:)の全体水平設定を上書きする
/// 一要素に修飾子を付与することで、同列の要素全てに適用される
/// どちらにも垂直方向の指定がない場合、中央(.center)
struct GridVerticalAlignment: View {
    var body: some View {
        Grid(alignment: .leading) {
            GridRow {
                Text("価格:") // 適用
                    .gridColumnAlignment(.trailing) // 👈
                Text("1000")
            }
            GridRow {
                Text("入荷日:") // 適用
                Text("2023/07/21")
            }
            GridRow {
                Text("売り上げ:") // 適用
                Text("25000")
            }
        }
    }
}

struct GridRowAlignment_Previews: PreviewProvider {
    static var previews: some View {
        GridHorizontalAlignment()
    }
}
