//
//  ContentView.swift
//  LocalizationApp
//
//  Created by Kensuke Nakagawa on 2023/02/24.
//  Localizableファイル内で設定したローカライズ値の使用例です。

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        
        VStack(spacing: 50) {
            
            // 🍎Textにおけるローカライズのポイント🍎
            // Textはリテラル文字が渡された時、暗黙的にLocalizable.stringsから一致するキーを検索する
            // 渡された値がキーに一致した時、キーに紐づいたローカライズ値を返す
            // 渡された値がキーに一致しなかった場合、渡された文字列をそのまま返す
            
            // ✅方法1: Text自身が持つイニシャライザ
            // 渡されたリテラルを参照して暗黙的なキー検索
            VStack {
                Text("date")
                Text("message")
                Text("codecandy") // ⬅︎キーと一致しない値
            }
            
            VStack {
                // 明示的に「LocalizedStringKey」でリテラル文字をラップ
                // ⬆︎の方法と同様の結果が得られる
                Text(LocalizedStringKey("date"))
                Text(LocalizedStringKey("message"))
                Text(LocalizedStringKey("codecandy")) // ⬅︎キーと一致しない値
            }
            
            // ✅方法2: iOS15~のStringイニシャライザ
            // String(localized:)
            VStack {
                Text(String(localized: "date"))
                Text(String(localized: "message"))
                Text(String(localized: "codecandy")) // ⬅︎キーと一致しない値
            }
            
            // ✅方法3: iOS14以下, 従来のローカライズ方法
            // NSLocalizedString
            VStack {
                Text(NSLocalizedString("date", comment: ""))
                Text(NSLocalizedString("message", comment: ""))
                Text(NSLocalizedString("codecandy", comment: "")) // ⬅︎キーと一致しない値
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
