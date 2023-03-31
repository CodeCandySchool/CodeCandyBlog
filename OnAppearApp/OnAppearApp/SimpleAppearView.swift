//
//  ContentView.swift
//  OnAppearApp
//
//  Created by Kensuke Nakagawa on 2023/03/30.
//
// onAppearの最もシンプルな使用例です。

import SwiftUI

struct SimpleAppearView: View {
    var body: some View {
        
        Text("Hello,World!")
            .onAppear {
                print("テキストが表示されました")
            }

    } // body
} // View

struct SimpleAppearView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleAppearView()
    }
}
