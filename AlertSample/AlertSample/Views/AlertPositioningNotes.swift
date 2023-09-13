//
//  AlertPositioningNotes.swift
//  AlertSample
//
//  Created by Kensuke Nakagawa on 2023/08/22.
//

import SwiftUI

/// 定義場所は、自身を表示するBoolプロパティを持つファイル内のどこでもOK
/// 条件分岐によるビューの出し分けを行っている場合は、判定false内のalertは作動しないことに注意
struct AlertPositioningNotes: View {

    @State private var isShowAlert: Bool = false
    @State private var selectionIndex: Int = 0

    var body: some View {

        /// --- 複数の入れ子構成のビューに定義されたパターン ---
        VStack {
            VStack {
                Button("アラートを表示する") { isShowAlert.toggle() }
            }

            VStack {

            }
            VStack {

            }
            VStack {

            }
        }
        // 問題なく作動する ⭕️
        .alert("Error", isPresented: $isShowAlert) {

        } message: {
            Text("エラーが発生しました")
        }

        /// --- if文の条件分岐によってalertが隠れているパターン ---
        VStack {
            if selectionIndex == 0 {
                // 表示中のView
                Button("アラートを表示する") { isShowAlert.toggle() }

            } else {
                // 非表示のView
                Button("アラートを表示する") { isShowAlert.toggle() }
                    // 非表示中のViewに定義されたalertは作動しない ❌
                    .alert("Error", isPresented: $isShowAlert) {

                    } message: {
                        Text("エラーが発生しました")
                    }
            } // if文
        }
        // 条件判定の外であればalertは作動する⭕️
        .alert("Error", isPresented: $isShowAlert) {

        } message: {
            Text("エラーが発生しました")
        }
    }
}
