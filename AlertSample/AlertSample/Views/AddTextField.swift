//
//  AddTextField.swift
//  AlertSample
//
//  Created by Kensuke Nakagawa on 2023/08/23.
//

import SwiftUI

/// iOS16+から使えるアラート + TextField and SecureField
struct AddTextField: View {

    @State private var showAlert = false
    @State private var address = ""
    @State private var password = ""

    var body: some View {
        Button("アラートを表示する") { showAlert = true }
        .alert("LogIn", isPresented: $showAlert) {

            TextField("メールアドレス", text: $address)
            SecureField("パスワード", text: $password)

            Button("キャンセル") {

            }
            Button("OK") {

            }

        } message: {
            // アラートのメッセージ...
            Text("必要な情報を入力してください")
        }
    }
}

struct AddTextField_Previews: PreviewProvider {
    static var previews: some View {
        AddTextField()
    }
}
