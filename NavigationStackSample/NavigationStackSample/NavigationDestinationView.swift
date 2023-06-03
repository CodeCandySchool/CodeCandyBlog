//
//  NavigationDestinationView.swift
//  NavigationStackSample
//
//  Created by Kensuke Nakagawa on 2023/06/04.
//
// navigationDestination修飾子による遷移ビューの発火

import SwiftUI

struct NavigationDestinationView: View {
    var body: some View {

        NavigationStack {

            // NavigationLinkに値のフラグを持たせる方法(value:)
            // String, Int, struct(構造体), enum(列挙体)など渡せる
            List {
                NavigationLink("レッドを渡して遷移", value: Color.red)
                NavigationLink("イエローを渡して遷移", value: Color.yellow)
                NavigationLink("グリーンを渡して遷移", value: Color.green)
            }
            /// 値のフラグを受け取ってナビゲーション遷移を発火することができる
            /// 引数「for:」には、受け取る値のデータ型を指定
            .navigationDestination(for: Color.self) { value in

                // 受け取った値は遷移先に使用ことができる
                value
                    .ignoresSafeArea()
            }
            .navigationTitle("ホーム画面")
        }
    }
}

struct NavigationDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDestinationView()
    }
}
