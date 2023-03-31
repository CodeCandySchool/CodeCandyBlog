//
//  FirstSignInAppearView.swift
//  OnAppearApp
//
//  Created by Kensuke Nakagawa on 2023/03/31.
//

import SwiftUI

struct FirstSignInAppearView: View {
    
    // ユーザーがアプリに登録済みかどうかを管理
    @State private var registerCheck: Bool = false
    // シート画面の表示を管理
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Text("ようこそ！")
                .font(.title)
        }
        .sheet(isPresented: $showSheet) {
            Text("初めまして！")
                .font(.title)
        }
        // ユーザーがアプリ未登録だった場合、シート画面を表示
        .onAppear {
            if registerCheck == false {
                showSheet.toggle()
            }
            
        }
    }
}

struct FirstSignInAppearView_Previews: PreviewProvider {
    static var previews: some View {
        FirstSignInAppearView()
    }
}
