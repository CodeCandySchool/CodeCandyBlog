//
//  BasicAlert.swift
//  AlertSample
//
//  Created by Kensuke Nakagawa on 2023/08/21.
//

import SwiftUI

/// アラートに入力するデータを持つカスタムデータソース
struct SaveDetails: Identifiable {
    let id = UUID()
    let name: String
    let error: String
}

/// 何らかのデータを保存するカスタムボタン。
struct SaveButton: View {

    @State private var didError = false
    @State private var details: SaveDetails?
    let alertTitle: String = "Save failed."

    var body: some View {
        Button("データを保存する") { save() }
            .alert(
                alertTitle,
                isPresented: $didError,
                presenting: details // ⬅︎ ソースを渡す
            ) { details in
                Button("\(details.name)を削除", role: .destructive) {
                    // データ保存取り消し処理...
                }
                Button("もう一度試す") {
                    // 再保存の処理...
                }

            } message: { details in
                Text(details.error)
            }
    }

    func save() {
        // データ保存処理
        //...
        //...

        // データ保存失敗時
        details = SaveDetails(name: "データ１",
                              error: "データの保存に失敗しました。")
        didError.toggle()
    }
}




struct AddDetailsAlert_Previews: PreviewProvider {
    static var previews: some View {
        AddDetailsAlert()
    }
}
