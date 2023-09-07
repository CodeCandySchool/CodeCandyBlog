//
//  BasicPicker.swift
//  PickerSample
//
//  Created by Kensuke Nakagawa on 2023/08/26.
//

import SwiftUI

/// シンプルなPickerの実装コード
struct BasicPicker: View {

    // 現在の選択アイテムを保持
    @State private var selectionColor: Color = .red

    var body: some View {

        VStack {

            Picker("色を選択", selection: $selectionColor) {

                Text("赤").tag(Color.red)
                Text("青").tag(Color.blue)
                Text("緑").tag(Color.green)

            }

            selectionColor
                .frame(width: 300, height: 300)
        }
    }
}

struct BasicPicker_Previews: PreviewProvider {
    static var previews: some View {
        BasicPicker()
    }
}
