//
//  ExampleGeometryView.swift
//  GeometryReaderSample
//
//  Created by Kensuke Nakagawa on 2023/04/30.
//

import SwiftUI

struct ExampleGeometryView: View {

    let colors: [Color] = [.red, .green, .blue, .pink, .yellow, .brown, .gray]

    var body: some View {

        ScrollView {
            ForEach(0..<30) { index in
                GeometryReader { geometry in
                    Text("minY: \(geometry.frame(in: .global).minY)")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(colors[index % 7])
                        // 回転アニメーション
                        // 要素一つ分のグローバル座標「minY」の値をビューの回転角度として渡す
                        .rotation3DEffect(
                            Angle(degrees: geometry.frame(in: .global).minY / 5),
                            axis   : (x: 0, y: 1, z: 0)
                        )
                }
                /// ⬆︎のように、隣り合う複数要素それぞれがGeometryReaderを持つようなとき、
                /// GeometryReader自身にサイズ指定することでビュー同士の間隔を定義する必要がある
                /// 「frame」のほか、「padding」などでも反映可能
                .frame(height: 40)
            }
        }

    } // body
} // View

struct ExampleGeometryView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleGeometryView()
    }
}
