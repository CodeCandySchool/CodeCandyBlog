//
//  AlertButtons.swift
//  AlertSample
//
//  Created by Kensuke Nakagawa on 2023/08/21.
//

import SwiftUI

/// 複数ボタンの配置
struct MultipleAlertButtons: View {

    @State private var isShowAlert = false

    var body: some View {

        Button("アラートを表示する") { isShowAlert.toggle() }

        // 複数のアクションボタンを配置可能
        .alert("Error", isPresented: $isShowAlert) {
            Button("戻る") {}
            Button("やり直す") {}

        } message: {
            // アラートのメッセージ...
            Text("エラーが発生しました")
        }

        // 3つ以降は、縦に並べられる
        .alert("Error", isPresented: $isShowAlert) {
            Button("ボタン1") {}
            Button("ボタン2") {}
            Button("ボタン3") {}

        } message: {
            // アラートのメッセージ...
            Text("エラーが発生しました")
        }
    }
}


/// Buttonの「role:」パラメータに値を渡すことで、そのボタンが持っている役割を
/// ユーザーにわかりやすく伝えるための外観が提供される。
struct SelectButtonRoles: View {

    @State private var isShowAlert = false

    var body: some View {

        Button("アラートを表示する") { isShowAlert.toggle() }

        /// ボタンのロール（役割）の設定
        .alert("確認", isPresented: $isShowAlert) {

            Button("戻る", role: .cancel) {}
            Button("削除する", role: .destructive) {}

        } message: {
            // アラートのメッセージ...
            Text("データ削除を実行しますか？")
        }
    }
}
