//
//  BasicNavigatitonStackView.swift
//  NavigationStackSample
//
//  Created by Kensuke Nakagawa on 2023/06/01.
//

import SwiftUI

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

struct NavigationDestinationView: View {
    var body: some View {

        NavigationStack {

            // NavigationLinkに値のフラグを持たせる方法
            List {
                NavigationLink("レッドを渡して遷移", value: Color.red)
                NavigationLink("イエローを渡して遷移", value: Color.yellow)
                NavigationLink("グリーンを渡して遷移", value: Color.green)
            }
            /// 値のフラグを受け取ってナビゲーション遷移を発火することができる
            /// 引数「for:」には、受け取る値のデータ型を指定
            .navigationDestination(for: Color.self) { value in

                // 受け取ったフラグは遷移先に渡すことができる
                value
                    .ignoresSafeArea()
            }
            .navigationTitle("ホーム画面")
        }
    }
}

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
