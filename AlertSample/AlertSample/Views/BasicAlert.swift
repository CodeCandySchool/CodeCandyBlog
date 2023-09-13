//
//  BasicAlert.swift
//  AlertSample
//
//  Created by Kensuke Nakagawa on 2023/08/21.
//

import SwiftUI

/// iOS15+から使用できるインスタンスメソッドalertによるシンプルなアラート実装
struct BasicAlert: View {

    @State private var isShowAlert = false

    var body: some View {
        Button("アラートを表示する") {
            isShowAlert.toggle()
        }
        .alert("Error", isPresented: $isShowAlert) {
            // ダイアログ内で行うアクション処理...

        } message: {
            // アラートのメッセージ...
            Text("エラーが発生しました")
        }
    }
}





