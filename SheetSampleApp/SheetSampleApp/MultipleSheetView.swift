//
//  MultipleSheetView.swift
//  SheetSampleApp
//
//  Created by Kensuke Nakagawa on 2023/03/02.
// 複数のシートモーダル画面を出し分ける実装

import SwiftUI

struct MultipleSheetView: View {
    
    // 状態変数をシート画面の数だけ用意
    @State var showSheet1: Bool = false
    @State var showSheet2: Bool = false
    @State var showSheet3: Bool = false
    
    var body: some View {
        
        // シート画面の数だけ状態変数のトリガーを用意
        VStack(spacing: 40) {
            Button("１つ目のシートモーダル画面を表示") {
                showSheet1.toggle()
            }
            Button("２つ目のシートモーダル画面を表示") {
                showSheet2.toggle()
            }
            Button("３つ目のシートモーダル画面を表示") {
                showSheet3.toggle()
            }
        }
        
        // シート画面の数だけsheetモディファイアを用意
        .sheet(isPresented: $showSheet1) {
            ZStack {
                Color.blue
                Text("これは１つ目のシートモーダル画面です")
            }
        }
        .sheet(isPresented: $showSheet2) {
            ZStack {
                Color.green
                Text("これは２つ目のシートモーダル画面でsy")
            }
        }
        .sheet(isPresented: $showSheet3) {
            ZStack {
                Color.red
                Text("これは３つ目のシートモーダル画面です")
            }
        }
        
    } // body
} // View

struct MultipleSheetView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetView()
    }
}
