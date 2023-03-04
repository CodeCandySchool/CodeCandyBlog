//
//  MultilevelSheetView.swift
//  SheetSampleApp
//
//  Created by Kensuke Nakagawa on 2023/03/02.
//

import SwiftUI

// 多階層的なシートモーダル遷移の実装
struct MultilevelSheetView: View {
    // 一つ目のシート画面表示を管理する状態変数
    @State var firstShowSheet: Bool = false
    
    var body: some View {
        
        Button("１つ目のシートモーダル画面を表示") {
            firstShowSheet.toggle()
        }
        .sheet(isPresented: $firstShowSheet) {
            
            FirstSheetView()
        }
    }
}

// 一つ目のシートモーダル画面
struct FirstSheetView: View {
    
    // 二つ目のシート画面表示を管理する状態変数
    @State var secondShowSheet: Bool = false
    
    var body: some View {
        Button("２つ目のシートモーダル画面を表示") {
            secondShowSheet.toggle()
        }
        .sheet(isPresented: $secondShowSheet) {
            SecondSheetView()
        }
    }
}

// 二つ目のシートモーダル画面
struct SecondSheetView: View {
    var body: some View {
        Text("これは２つ目のシートモーダル画面です")
    }
}

struct MultilevelSheetView_Previews: PreviewProvider {
    static var previews: some View {
        MultilevelSheetView()
    }
}
