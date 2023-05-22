//
//  ParentSizeGeometryView.swift
//  GeometryReaderSample
//
//  Created by Kensuke Nakagawa on 2023/04/13.
//
// GeometryReaderは自身の親ビューの情報を取得する

import SwiftUI

struct ParentSizeGeometryView: View {
    var body: some View {
        VStack {
            // この場合、親ビューはVStackであり、「geometry」にはVStackの情報が格納される
            // ✅親ビューがどれなのかを正確に把握することが重要
            GeometryReader { geometry in
                VStack {
                    Text("親ビューの幅: \(geometry.size.width)") // ⬅︎ 300
                    Text("親ビューの高さ: \(geometry.size.height)") // ⬅︎ 300
                }
            }
        }
        .frame(width: 300, height: 300) // ⬅︎ 親ビューVStackのサイズ情報
        .border(.green)

    } // body
} // View

struct ParentSizeGeometryView_Previews: PreviewProvider {
    static var previews: some View {
        ParentSizeGeometryView()
    }
}
