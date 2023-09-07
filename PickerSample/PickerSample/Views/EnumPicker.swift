//
//  EnumPicker.swift
//  PickerSample
//
//  Created by Kensuke Nakagawa on 2023/08/28.
//

import SwiftUI

/// フルーツの列挙体
/// CaseIterableプロトコルに準拠することで、「allCases」メソッドを使用できる
enum Fruits: CaseIterable {
    case apple
    case orange
    case melon

    // 名前
    var name: String {
        switch self {
        case .apple : return "りんご"
        case .orange: return "みかん"
        case .melon : return "メロン"
        }
    }
    // シンボル
    var symbol: String {
        switch self {
        case .apple : return "🍎"
        case .orange: return "🍊"
        case .melon : return "🍈"
        }
    }
}

/// 列挙体（enum）を用いたPickerの実装
struct EnumPicker: View {

    // 列挙体のデータを格納
    @State private var selectionFruit = Fruits.apple

    var body: some View {
        VStack {
            Picker("", selection: $selectionFruit) {
                // allcasesメソッドを使って、enumの各ケースを列挙
                ForEach(Fruits.allCases, id: \.self) { fruit in
                    Text(fruit.name)
                }
            }
            // 選択アイテムの表示
            Text(selectionFruit.symbol)
                .font(.largeTitle)
        }
    }
}
