//
//  PickerStyles.swift
//  PickerSample
//
//  Created by Kensuke Nakagawa on 2023/08/28.
//
// ピッカーに用意されている各スタイル

import SwiftUI

/// メニュー型
struct MenuStylePicker: View {

    // 現在の選択アイテムを保持
    @State private var selectionColor: Color = .red

    var body: some View {
        Picker("色を選択", selection: $selectionColor) {
            Text("赤").tag(Color.red)
            Text("青").tag(Color.blue)
            Text("緑").tag(Color.green)
        }
        .pickerStyle(.menu) // ⬅︎デフォルト
    }
}

/// ホイール型
struct WheelStylePicker: View {

    // 現在の選択アイテムを保持
    @State private var selectionColor: Color = .red

    var body: some View {
        Picker("色を選択", selection: $selectionColor) {
            Text("赤").tag(Color.red)
            Text("青").tag(Color.blue)
            Text("緑").tag(Color.green)
        }
        .pickerStyle(.wheel) // ⬅︎
    }
}

/// セグメント型
struct SegmentedStylePicker: View {

    // 現在の選択アイテムを保持
    @State private var selectionColor: Color = .red

    var body: some View {
        Picker("色を選択", selection: $selectionColor) {
            Text("赤").tag(Color.red)
            Text("青").tag(Color.blue)
            Text("緑").tag(Color.green)
        }
        .pickerStyle(.segmented) // ⬅︎
    }
}

/// FormやListと組み合わせたスタイル
struct InlineStylePicker: View {

    // 現在の選択アイテムを保持
    @State private var selectionColor: Color = .red

    var body: some View {

        Form {
            Picker("色を選択", selection: $selectionColor) {
                Text("赤").tag(Color.red)
                Text("青").tag(Color.blue)
                Text("緑").tag(Color.green)
            }
            .pickerStyle(.inline)
        }
    }
}
