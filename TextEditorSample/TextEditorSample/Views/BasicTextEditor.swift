//
//  BasicTextEditor.swift
//  TextEditorSample
//
//  Created by Kensuke Nakagawa on 2023/08/24.
//

import SwiftUI





/// TextEditorのシンプルな実装コード
struct BasicTextEditor: View {

    @State private var inputText =
"""
TextEditorは複数の入力を
サポートします。

文字数が自身のサイズを超えた場合は、自動で改行されます。

自動でスクロール機能も提供されます。
"""

    var body: some View {








        // サイズ指定がある場合
        TextEditor(text: $inputText)
            .frame(width: 300, height: 400) // ⬅︎
            .border(.gray)










    }
}






struct BasicTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        BasicTextEditor()
    }
}
