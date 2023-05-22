//
//  GetCoordinateGeometryView.swift
//  GeometryReaderSample
//
//  Created by Kensuke Nakagawa on 2023/05/22.
//
// GeometryReaderによる座標取得

import SwiftUI

/// GeometryReaderによるローカル座標の取得
/// 計測始点は親ビューの左上端からスタート(「minX」「minY」の座標取得値は常に0となる)
struct GetLocalCoordinateGeometryView: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Text("親ビューのローカル幅(始点): \(geometry.frame(in: .local).minX)")
                    Text("親ビューのローカル幅(中間点): \(geometry.frame(in: .local).midX)")
                    Text("親ビューのローカル幅(終点): \(geometry.frame(in: .local).maxX)")

                    Text("親ビューのローカル高さ(始点): \(geometry.frame(in: .local).minY)")
                    Text("親ビューのローカル高さ(中間点): \(geometry.frame(in: .local).midY)")
                    Text("親ビューのローカル高さ(終点): \(geometry.frame(in: .local).maxY)")
                }
            }
        }
        .frame(width: 300, height: 300) // ⬅︎ 親ビューVStackのサイズ情報
        .border(.green)
    }
}

/// GeometryReaderによるグローバル座標の取得
/// 計測始点は常に画面の左上端からスタート
struct GetGlobalCoordinateGeometryView: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Text("親ビューのグローバル幅(始点): \(geometry.frame(in: .global).minX)")
                    Text("親ビューのグローバル幅(中間点): \(geometry.frame(in: .global).midX)")
                    Text("親ビューのグローバル幅(終点): \(geometry.frame(in: .global).maxX)")

                    Text("親ビューのグローバル高さ(始点): \(geometry.frame(in: .global).minY)")
                    Text("親ビューのグローバル高さ(中間点): \(geometry.frame(in: .global).midY)")
                    Text("親ビューのグローバル高さ(終点): \(geometry.frame(in: .global).maxY)")
                }
            }
        }
        .frame(width: 300, height: 300) // ⬅︎ 親ビューVStackのサイズ情報
        .border(.green)
    }
}
