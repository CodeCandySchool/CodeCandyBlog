//
//  BasicAlert.swift
//  AlertSample
//
//  Created by Kensuke Nakagawa on 2023/08/21.
//





import SwiftUI

/// iOS15+から使用できるインスタンスメソッドalertによるシンプルなアラート実装
struct BasicAlert: View {

    @State private var didError = false

    var body: some View {
        Button("アラートを表示する") { didError = true }
        .alert("Error", isPresented: $didError) {
            // ダイアログ内で行うアクション処理...

        } message: {
            // アラートのメッセージ...
            Text("エラーが発生しました")
        }
    }
}






struct BasicAlert_Previews: PreviewProvider {
    static var previews: some View {
        BasicAlert()
    }
}
