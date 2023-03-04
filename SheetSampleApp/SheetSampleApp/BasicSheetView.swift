//
//  ContentView.swift
//  SheetSampleApp
//
//  Created by Kensuke Nakagawa on 2023/03/02.
//
// シンプルなシートモーダル画面の実装

import SwiftUI

struct BasicSheetView: View {
    
    // シート画面の表示を管理する状態変数
    @State var showSheet: Bool = false
    
    var body: some View {
        
        Button("シートモーダル画面を表示") {
            
            showSheet.toggle() // ボタンタップで状態変数の値を切り替える
            
        }
        .sheet(isPresented: $showSheet) {
            
            // この中に実装したViewがシート画面に表示される
            Text("これはシートモーダル画面です")
            
        }
        
    } // body
} // View

struct BasicSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BasicSheetView()
    }
}
