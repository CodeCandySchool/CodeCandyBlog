//
//  CountShowSheetView.swift
//  SheetSampleApp
//
//  Created by Kensuke Nakagawa on 2023/03/02.
//
// 「数値が〜〜以上になったらシート画面を表示」という条件を用いた実装

import SwiftUI

struct CountShowSheetView: View {
    
    @State var count: Int = 0
    @State var showSheet: Bool = false
    
    var body: some View {
        
        Text("\(count)")
            .font(.largeTitle)
        
        Button("値をプラス１する") {
            count += 1
            
            // 条件に当てはまるとシート画面を表示する
            if count >= 10 {
                showSheet.toggle()
            }
        }
        
        .sheet(isPresented: $showSheet) {
            Text("カウントが１０になりました！")
        }
    }
}

struct CountShowSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CountShowSheetView()
    }
}
