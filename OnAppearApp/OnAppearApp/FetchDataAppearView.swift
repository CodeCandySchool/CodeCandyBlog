//
//  AppearFetchDataView.swift
//  OnAppearApp
//
//  Created by Kensuke Nakagawa on 2023/03/30.
//

import SwiftUI

struct FetchDataAppearView: View {
    
    @State private var listItems: [String] = []
    
    var body: some View {
        
        List(listItems, id: \.self) { item in
            Text(item)
        } // List
        // 画面表示のタイミングでメソッドを実行する
        .onAppear {
          fetchData()
        }
        
    } // body
    /// 配列にアイテムを追加するメソッド
    func fetchData() {
        listItems = ["りんご", "バナナ", "ブドウ", "みかん"]
    }
} // View

struct AppearFetchDataView_Previews: PreviewProvider {
    static var previews: some View {
        FetchDataAppearView()
    }
}
