//
//  CenterCoordinateGeometryView.swift
//  GeometryReaderSample
//
//  Created by Kensuke Nakagawa on 2023/05/22.
//
// 左上端に配置されたGeometryReaderの子ビューを中央に持ってくるパターン例

import SwiftUI

struct CenterCoordinateGeometryView: View {
    var body: some View {
        GeometryReader { geometry in

            // ✅親ビューのサイズ情報を子ビューに渡すパターン
            VStack {
                Text("Hello, world!")
            }
            // 親ビューの幅(width)と高さ(height)を渡す
            .frame(width: geometry.size.width,
                   height: geometry.size.height)

            // ✅「position」モディファイアで座標を指定するパターン
            VStack {
                Text("Hello, world!")
            }
            // position ⇨ 親の座標空間において左上端を原点とし、指定された座標に"ビューの中心"を位置づける
            // 親ビューの幅(width)と高さ(height)の半分値を渡すことで中央に配置する
            .position(x: geometry.size.width / 2,
                      y: geometry.size.height / 2)
        }
    }
}

struct CenterCoordinateGeometryView_Previews: PreviewProvider {
    static var previews: some View {
        CenterCoordinateGeometryView()
    }
}
