//
//  GridAlignment.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/17.
//

import SwiftUI

/// グリッド要素の配置ルールを指定
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

/// GridRow(alignment:)で行ごとの垂直方向の配置ルールを上書きできる
/// 指定がない場合、Grid(alignment:)に対して指定した配置ルールが適用される
/// どちらにも垂直方向の指定がない場合、中央(.center)
struct GridRowAlignment: View {
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

/// グリッド要素の間隔を指定
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

struct GridRowAlignment_Previews: PreviewProvider {
    static var previews: some View {
        GridRowAlignment()
    }
}
