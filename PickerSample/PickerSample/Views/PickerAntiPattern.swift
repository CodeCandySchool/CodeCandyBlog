//
//  PickerAntiPattern.swift
//  PickerSample
//
//  Created by Kensuke Nakagawa on 2023/09/03.
//
// ピッカーが正常に動作しないアンチパターン例

import SwiftUI

/// Pickerが扱うデータが識別値を持っていないパターン
/// 「データパラメータにidを持たせる」「.tag()で識別値を持たせる」「ForEachでidを定義する」などで回避する
struct NoIdentification: View {

    @State private var selectionColor: Color = .red

    var body: some View {

        VStack {
            Picker("色を選択", selection: $selectionColor) {
                /// Text自体は識別値を持たない❌
                Text("赤")
                Text("青")
                Text("緑")
            }
        }
    }
}

/// @Stateプロパティのデータ型と識別値のデータ型が異なるパターン
struct differentDataTypes: View {

    // String型で定義されたStateプロパティ
    @State private var selectionValue: String = ""

    var body: some View {

        VStack {
            Picker("色を選択", selection: $selectionValue) {
                /// tagのデータ型がStateプロパティのデータ型と異なる❌
                Text("赤").tag(Color.red)
                Text("青").tag(Color.blue)
                Text("緑").tag(Color.green)
            }
        }
    }
}

/// Stateプロパティをオプショナルで定義しているパターン
struct OptionalDefinition: View {
    // オプショナルで定義している❌
    @State private var selectionColor: Color?

    var body: some View {

        VStack {
            Picker("色を選択", selection: $selectionColor) {

                Text("赤").tag(Color.red)
                Text("青").tag(Color.blue)
                Text("緑").tag(Color.green)
            }
        }
    }
}



