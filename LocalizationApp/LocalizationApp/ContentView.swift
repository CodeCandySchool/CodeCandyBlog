//
//  ContentView.swift
//  LocalizationApp
//
//  Created by Kensuke Nakagawa on 2023/02/24.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        
        VStack(spacing: 50) {
            
            // 🍎Textにおけるローカライズのポイント🍎
            // Textはリテラル文字が渡された時、暗黙的にLocalizable.stringsから一致するキーを検索する
            // 渡された値がキーに一致した時、キーに紐づいたローカライズ値を返す
            // 渡された値がキーに一致しなかった場合、渡された文字列をそのまま返す
            
            VStack {
                // Text自身が持つイニシャライザ
                // 渡されたリテラルを参照して暗黙的なキー検索
                Text("date")
                Text("message")
                Text("codecandy") // ⬅︎キーと一致しない値
            }
            
            VStack {
                // iOS15~のStringイニシャライザ
                // String(localized:)
                Text(String(localized: "date"))
                Text(String(localized: "message"))
                Text(String(localized: "codecandy")) // ⬅︎キーと一致しない値
            }
            
            VStack {
                // iOS14以下, 従来のローカライズ方法
                // NSLocalizedString
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
