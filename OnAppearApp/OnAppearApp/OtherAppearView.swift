//
//  OtherViewAppearView.swift
//  OnAppearApp
//
//  Created by Kensuke Nakagawa on 2023/03/30.
//

import SwiftUI

struct OtherAppearView: View {
    @State var show: Bool = false
    var body: some View {
        
        // ① VStackやHStackなどのスタックViewに付与するonAppear
        VStack {
            Text("VStackのViewコンテナです。")
        }
        .onAppear {
            // 処理
        }
        
        // ② 条件文によって表示管理されるViewに付与するonAppear
        if show {
            Text("条件文下で表示されるViewコンテナです。")
                .onAppear {
                    // 処理
                }
        }
        
        // ③ View構造体のインスタンス自身に付与するonAppear
        CustomText()
            .onAppear {
                // 処理
            }
        
    } // body
} // View

struct CustomText: View {
    var body: some View {
        Text("これはView構造体です。")
    }
}

struct OtherAppearView_Previews: PreviewProvider {
    static var previews: some View {
        OtherAppearView()
    }
}
