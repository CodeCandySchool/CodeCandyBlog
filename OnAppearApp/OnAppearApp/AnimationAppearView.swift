//
//  AnimationAppearView.swift
//  OnAppearApp
//
//  Created by Kensuke Nakagawa on 2023/03/30.
//
// 画面表示時のViewの状態やアニメーションを管理するコード例

import SwiftUI

struct AnimationAppearView: View {
    
    @State private var animationContent: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            
            Text("onAppearによる遅延アニメーション")
                .font(.title2)
                .fontWeight(.semibold)
            
            // 「animationContent」がtrueの時に表示されるView
            if animationContent {
                Text("Hello,world!")
                    .font(.title)
                    .fontWeight(.semibold)
            }
        }
        // 画面表示時に、時間をずらしてプロパティ「animationContent」を更新する
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                withAnimation(.easeIn(duration: 1)) {
                    animationContent.toggle()
                }
            }
        }
    } // body
} // View

struct AnimationAppearView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationAppearView()
    }
}
