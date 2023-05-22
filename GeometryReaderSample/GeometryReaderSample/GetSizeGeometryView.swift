//
//  GetSizeGeometryView.swift
//  GeometryReaderSample
//
//  Created by Kensuke Nakagawa on 2023/05/22.
// GeometryReaderによるサイズ取得

import SwiftUI

struct GetSizeGeometryView: View {
    var body: some View {
        GeometryReader { geometry in // ⬅︎ 親ビューはGetSizeGeometryView
            VStack {
                Text("親ビューの横幅: \(geometry.size.width)")
                Text("親ビューの高さ: \(geometry.size.height)")
            }
        }
    }
}

struct GetSizeGeometryView_Previews: PreviewProvider {
    static var previews: some View {
        GetSizeGeometryView()
    }
}
