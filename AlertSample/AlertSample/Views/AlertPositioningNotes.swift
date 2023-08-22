//
//  AlertPositioningNotes.swift
//  AlertSample
//
//  Created by Kensuke Nakagawa on 2023/08/22.
//

import SwiftUI


/// 定義場所は、自身を表示するBoolプロパティを持つファイル内のどこでもOK
/// 条件文によるビューの出し分けを行っている場合は、判定false内のalertは作動しないことに注意
struct AlertPositioningNotes: View {

    @State private var didError = false
    @State private var selectionView = 0

    var body: some View {

        VStack {
            if selectionView == 0 {
                Button("アラートを表示する") { didError = true }

            } else {
                Button("アラートを表示する") { didError = true }
                    // 判定「false」内のalertは作動しない❌
                    .alert("Error", isPresented: $didError) {
                        // ダイアログ内で行うアクション処理...

                    } message: {
                        // アラートのメッセージ...
                        Text("エラーが発生しました")
                    }
            } // if文
        }
        // 条件判定の外であればalertは作動する⭕️
        .alert("Error", isPresented: $didError) {
            // ダイアログ内で行うアクション処理...

        } message: {
            // アラートのメッセージ...
            Text("エラーが発生しました")
        }
    }
}

struct AlertPositioningNotes_Previews: PreviewProvider {
    static var previews: some View {
        AlertPositioningNotes()
    }
}
