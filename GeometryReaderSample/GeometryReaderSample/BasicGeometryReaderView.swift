//
//  BasicGeometryReaderView.swift
//  GeometryReaderSample
//
//  Created by Kensuke Nakagawa on 2023/04/11.
// GeometryReaderの最も基本的な記述法

import SwiftUI

struct BasicGeometryReaderView: View {
    var body: some View {

        GeometryReader { geometry in
            // geometry.size       -> サイズを取得
            // geometry.frame(in:) -> 座標空間を取得
        }

    } // body
} // View

struct BasicGeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        BasicGeometryReaderView()
    }
}
