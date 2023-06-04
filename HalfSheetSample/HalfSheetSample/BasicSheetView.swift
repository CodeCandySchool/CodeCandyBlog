//
//  BasicSheetView.swift
//  HalfSheetSample
//
//  Created by Kensuke Nakagawa on 2023/06/04.
// SwiftUIにおけるsheetの基本的な記述

import SwiftUI

struct BasicSheetView: View {

    @State private var isShowSheet = false

        var body: some View {

            Button("シートを表示") {
                isShowSheet.toggle()
            }
            .sheet(isPresented: $isShowSheet,
                   onDismiss: didDismiss) {
                SheetView(show: $isShowSheet)
            }
        }

        func didDismiss() {
            // シートを破棄した時の処理...
        }
}

/// iPhone横スクリーンだと自動でフルスクリーンに調整されるため
/// シートを破棄する用のシステム制御(ボタンアクションなど)がないと
/// シートを破棄できないので注意
struct SheetView: View {

    @Binding var show: Bool

    var body: some View {
        VStack(spacing: 30) {
            Text("シート画面").font(.largeTitle)
            Button("シートを閉じる") {
                show.toggle()
            }
        }
    }
}

struct BasicSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BasicSheetView()
    }
}
