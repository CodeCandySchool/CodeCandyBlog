//
//  MultipleOnChangeView.swift
//  OnChangeApp
//
//  Created by Kensuke Nakagawa on 2023/04/04.
//

import SwiftUI

struct MultipleOnChangeView: View {
    
    @State private var inputText1: String = ""
    @State private var inputText2: String = ""
    
    var body: some View {
        VStack {
            TextField("一つ目のテキスト入力", text: $inputText1)
            TextField("二つ目のテキスト入力", text: $inputText2)
        }
        .textFieldStyle(.roundedBorder)
        .padding()
        // 複数の値を監視対象に設定
        .onChange(of: [inputText1, inputText2]) { newValue in
            print(newValue)
        }
        
    } // body
} // View

struct MultipleOnChangeView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleOnChangeView()
    }
}
