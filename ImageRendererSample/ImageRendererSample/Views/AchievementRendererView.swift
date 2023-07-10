//
//  AchivementRnedererView.swift
//  ImageRendererSample
//
//  Created by Kensuke Nakagawa on 2023/07/10.
//
// ImageRendererを用いた具体的なビューの画像取得実装例

import SwiftUI

struct AchievementRendererView: View {

    let playerName = "CodeCandy"
    let achievementDate = Date.now
    @State private var renderedImage: UIImage? // レンダリング画像を格納
    @State private var showSheet: Bool = false // 保存完了を知らせるシートを管理

    var body: some View {

        // アチーブメントビューの初期化
        let trophyAndDate = CreateAwardView(forUser: playerName,
                                             date: achievementDate)
        VStack {
            trophyAndDate

            Button("アチーブメントを保存") {
                let renderer = ImageRenderer(content: trophyAndDate)
                if let image = renderer.uiImage {
                    renderedImage = image
                    // 用途によって、外部データベースへの保存処理など...
                }
            }
            .padding()
            .onChange(of: renderedImage) { _ in
                if renderedImage != nil {
                    showSheet.toggle()
                }
            }
        }
        .sheet(isPresented: $showSheet) {
            SavedAchievementView(image: renderedImage)
        }
    }




    /// ImageRendererによって画像化されるアチーブメントビュー
    private func CreateAwardView(forUser: String, date: Date) -> some View {
        VStack {
            Image(systemName: "trophy")
                .resizable()
                .frame(width: 200, height: 200)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .shadow(color: .mint, radius: 5)
            Text(playerName)
                .font(.largeTitle)
            Text(achievementDate.formatted())
        }
        .multilineTextAlignment(.center)
        .frame(width: 200, height: 290)
    }




}

/// アチーブメントの保存が完了を知らせるシートビュー
struct SavedAchievementView: View {
    // レンダリング取得したUIImage画像を親ビューから受け取る
    var image: UIImage?

    var body: some View {
        VStack(spacing: 30) {
            Text("アチーブメント保存完了！")
                .font(.title2)

            if let image {
                Image(uiImage: image)
            }
        }
    }
}

struct AchievementRnedererView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementRendererView()
    }
}
