//
//  GetSheetStateView.swift
//  HalfSheetSample
//
//  Created by Kensuke Nakagawa on 2023/06/04.
//
// シートの表示状態を監視する

import SwiftUI

struct GetSheetStateView: View {

    @State private var isShowSheet = false
    // シートの状態を取得するために用いるプロパティ
    @State private var presentationDetent = PresentationDetent.medium

    var body: some View {

        Button("シートを表示") {
            isShowSheet.toggle()
        }
        .sheet(isPresented: $isShowSheet,
               onDismiss: didDismiss) {

            SheetStateDetails(show: $isShowSheet,
                              state: presentationDetent)
                // 第二引数「selection:」にStateプロパティを設定
                .presentationDetents([
                    .medium,
                    .large,
                ], selection: $presentationDetent) // ⬅︎
        }
    }
    // シートの初期表示を固定化するためのメソッド
    func didDismiss() {
        presentationDetent = .medium
    }
}

struct SheetStateDetails: View {

    @Binding var show: Bool
    let state: PresentationDetent

    var body: some View {
        VStack(spacing: 30) {

            switch state {
            case .medium:
                Text("ハーフ画面").font(.largeTitle)
            case .large:
                Text("全画面").font(.largeTitle)
            default:
                EmptyView()
            }

            Button("シートを閉じる") {
                show.toggle()
            }
        }
    }
}

struct GetSheetStateView_Previews: PreviewProvider {
    static var previews: some View {
        GetSheetStateView()
    }
}
