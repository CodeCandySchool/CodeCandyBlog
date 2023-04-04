//
//  DetectOnChangeView.swift
//  OnChangeApp
//
//  Created by Kensuke Nakagawa on 2023/04/03.
//

import SwiftUI

struct DisableButtonOnChangeView: View {
    
    @State private var inputText: String = ""
    // 「disabled」モディファイアに渡すBool値
    @State private var isDisable: Bool = true
    
    var body: some View {
        
        VStack {
            // 条件で表示管理されるメッセージ
            if isDisable && inputText.isEmpty {
                Text("文字を入力してください")
                    .foregroundColor(.red)
            }
            
            TextField("文字を入力", text: $inputText)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("完了") {
               // 何らかの処理...
            }
            .buttonStyle(.borderedProminent)
            .disabled(isDisable) // ⬅︎ trueで無効化
        }
        .onChange(of: inputText) { newValue in
            // 文字数が0だったら
            if newValue.isEmpty {
                isDisable = true
            } else {
                isDisable = false
            }
        }
    } // body
} // View

struct DisableButtonOnChangeView_Previews: PreviewProvider {
    static var previews: some View {
        DisableButtonOnChangeView()
    }
}
