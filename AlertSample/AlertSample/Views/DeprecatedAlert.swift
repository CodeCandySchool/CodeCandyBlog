//
//  DeprecatedAlert.swift
//  AlertSample
//
//  Created by Kensuke Nakagawa on 2023/08/21.
//

import SwiftUI

/// View構造体「Alert」を使った実装は非推薦となった。
struct DeprecatedAlert: View {

    @State private var isShowAlert = false

    var body: some View {
        Button("アラートを表示") {
            isShowAlert.toggle()
        }
        .alert(isPresented: $isShowAlert) {
            Alert(
                title: Text("Error"),
                message: Text("エラーが発生しました。")
            )
        }
    }
}
