//
//  CustomDataPicker.swift
//  PickerSample
//
//  Created by Kensuke Nakagawa on 2023/08/28.
//

import SwiftUI

/// カスタムデータ構造体（フルーツ）
struct Fruit: Identifiable, Hashable {
    var name: String
    var symbol: String
    var id: String { self.symbol }
}

/// 独自のカスタムデータを用いたピッカーの実装
struct CustomDataPicker: View {

    // カスタムデータ群
    let fruits: [Fruit] = [
        Fruit(name: "バナナ", symbol: "🍌"),
        Fruit(name: "りんご", symbol: "🍎"),
        Fruit(name: "キウイ", symbol: "🥝")
    ]

    // 選択されている現在のアイテムを保持するプロパティ
    @State private var selectionValue: String = ""

    var body: some View {
        VStack {
            Picker("", selection: $selectionValue) {
                ForEach(fruits) { fruit in
                    Text("\(fruit.symbol) \(fruit.name)")
                }
            }
        }
    }






}
