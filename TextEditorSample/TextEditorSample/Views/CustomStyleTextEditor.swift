//
//  CustomizeTextEditor.swift
//  TextEditorSample
//
//  Created by Kensuke Nakagawa on 2023/08/24.
//

import SwiftUI

/// 入力ボックスに枠線を追加する
struct BorderLineTextEditor: View {

    @State private var inputText = "枠線を追加する"

    var body: some View {

        // 入力ボックスに枠線を追加する
        TextEditor(text: $inputText)
            .frame(width: 400, height:150)
            .border(.gray, width: 5) // ⬅︎
    }
}

/// 入力ボックスの枠とテキストの間隔を空ける
struct PaddingTextEditor: View {

    @State private var inputText = "枠との間隔を空ける"

    var body: some View {

        // 枠との間隔を空ける
        TextEditor(text: $inputText)
            .padding() // ⬅︎
            .frame(width: 400, height:150)
            .border(.gray, width: 5)
    }
}

/// 入力テキストの文字スタイルを変更する
struct CustomFontStyle: View {

    @State private var inputText = "文字スタイルを変更する"

    var body: some View {

        // 文字スタイルを変更する
        TextEditor(text: $inputText)
            .font(.title)             // ⬅︎
            .fontWeight(.bold)        // ⬅︎
            .foregroundColor(.orange) // ⬅︎
            .frame(width: 400, height:150)
            .border(.gray, width: 5)
    }
}

/// テキストの行間を変更する
struct CustomLineSpacing: View {

    @State private var inputText =
    """
テキストの行間を変更する
テキストの行間を変更する
テキストの行間を変更する
"""

    var body: some View {

        VStack {
            TextEditor(text: $inputText)
                .frame(width: 400, height:150)
                .border(.gray, width: 5)

            TextEditor(text: $inputText)
                .lineSpacing(30) // ⬅︎
                .frame(width: 400, height:150)
                .border(.gray, width: 5)
        }
    }
}

/// テキストの整列ルールを制御する
struct CustomTextAlignment: View {

    @State private var inputText =
    """
テキストの
整列ルールを
制御する
"""

    var body: some View {

        VStack {
            // テキストの整列ルールを制御する(左寄せ)
            TextEditor(text: $inputText)
                .multilineTextAlignment(.leading) // ⬅︎
                .frame(width: 400, height:100)
                .border(.gray, width: 5)

            // テキストの整列ルールを制御する(中央寄せ)
            TextEditor(text: $inputText)
                .multilineTextAlignment(.center) // ⬅︎
                .frame(width: 400, height:100)
                .border(.gray, width: 5)

            // テキストの整列ルールを制御する(右寄せ)
            TextEditor(text: $inputText)
                .multilineTextAlignment(.trailing) // ⬅︎
                .frame(width: 400, height:100)
                .border(.gray, width: 5)
        }
    }
}

/// TextEditorにプレースホルダーを追加する
struct CustomPlaceHolder: View {

    @State private var inputText = ""

    var body: some View {

        TextEditor(text: $inputText)
            .frame(width: 400, height:150)
            .border(.gray, width: 5)

            .overlay(alignment: .topLeading) {
                // 未入力の時、プレースホルダーを表示
                if inputText.isEmpty {
                    Text("ここに文字を入力してください。")
                        .allowsHitTesting(false)
                        .foregroundColor(Color(uiColor: .placeholderText))
                        .padding(6)
                }
            }
    }
}

/// TextEditorにプレースホルダーを追加する
struct CustomKeyboardType: View {

    @State private var inputText = "0123"

    var body: some View {

        TextEditor(text: $inputText)
            .keyboardType(.default) // ⬅︎
            .frame(width: 400, height:150)
            .border(.gray, width: 5)
    }
}

/// 単語の自動修正機能をOFFにする
struct AutocorrectionControl: View {

    @State private var inputText = ""

    var body: some View {

        TextEditor(text: $inputText)
            .autocorrectionDisabled(true) // ⬅︎
            .frame(width: 400, height:150)
            .border(.gray, width: 5)
    }
}

/// TextEditorの編集可能/不可能をコントロールする
struct DisabledEditControl: View {

    @State private var inputText = "編集可能/不可能をコントロールする"

    var body: some View {

        TextEditor(text: $inputText)
            .disabled(true) // trueで編集不可
            .frame(width: 400, height:150)
            .border(.gray, width: 5)
    }
}

/// TextEditorのフォーカスをプログラムで制御する
struct FocusControlTextEditor: View {

    @State private var inputText = "フォーカスをプログラムで制御する"
    @FocusState var isFocused: Bool // ⬅︎

    var body: some View {

        ZStack {
            Color.green
                .ignoresSafeArea()
                // タップでキーボードを閉じる
                .onTapGesture {
                    isFocused = false
                }

            TextEditor(text: $inputText)
                .focused($isFocused) // ⬅︎
                .frame(height:150)
                .border(.gray, width: 5)
                .padding()
        }
    }
}
