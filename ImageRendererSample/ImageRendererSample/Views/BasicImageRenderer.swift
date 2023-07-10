//
//  BasicImageRenderer.swift
//  ImageRendererSample
//
//  Created by Kensuke Nakagawa on 2023/07/08.
//

import SwiftUI

struct BasicImageRenderer: View {

    @State private var renderedImage: UIImage? // レンダリング画像を格納

    var body: some View {

        VStack {
            Button("SwiftUIビューを画像として取得") {
                // ImageRenderer(content:)にビューを渡す
                let renderer = ImageRenderer(content: HogeView())
                if let image = renderer.uiImage { // .cgImageもある
                    self.renderedImage = image
                }
            }
        }
    }
    /// ImageRendererによって画像化されるビュー
    private func HogeView() -> some View {

        VStack {
            // 何らかのView...
        }
    }
}

struct BasicImageRenderer_Previews: PreviewProvider {
    static var previews: some View {
        BasicImageRenderer()
    }
}


