//
//  SheetAppearView.swift
//  OnAppearApp
//
//  Created by Kensuke Nakagawa on 2023/03/30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        
        Button("シート画面を表示する") {
            showSheet.toggle()
        }
        // シート画面の遷移先ViewにonAppearを設定
        .sheet(isPresented: $showSheet) {
            Text("これはシート画面です")
                .onAppear {
                    print("シート画面が表示されました")
                }
        }
        
    } // body
} // View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
