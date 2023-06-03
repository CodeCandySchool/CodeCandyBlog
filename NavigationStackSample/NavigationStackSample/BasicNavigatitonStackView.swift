//
//  BasicNavigatitonStackView.swift
//  NavigationStackSample
//
//  Created by Kensuke Nakagawa on 2023/06/01.
//
// NavigationStackによる従来のナビゲーション管理


import SwiftUI

// NavigationLinkを用いたナビゲーション管理
struct BasicNavigatitonStackView: View {

    var body: some View {

        NavigationStack {

            // 従来のNavigationLink活用が可能
            List {
                NavigationLink("A画面に遷移") {
                    Text("A画面").font(.largeTitle)
                }
                NavigationLink("B画面に遷移") {
                    Text("B画面").font(.largeTitle)
                }
                NavigationLink("C画面に遷移") {
                    Text("C画面").font(.largeTitle)
                }
            }
        }
    }
}
// NavigationStackにおける親子ビューの関係
struct ParentView: View {

    var body: some View {

        NavigationStack {

            List {
                NavigationLink("子ビューへ遷移") {
                    ChildView(value: "りんご")
                }
            }
            .navigationTitle("親ビュー")
        }
    }
}

// 子ビューに定義は必要ない
struct ChildView: View {

    let value: String

    var body: some View {

        VStack {
            Text(value)
                .font(.title)
        }
        .navigationTitle("子ビュー")
    }
}
