//
//  ContentView.swift
//  OnChangeApp
//
//  Created by Kensuke Nakagawa on 2023/03/31.
//

import SwiftUI

struct BasicOnChangeView: View {
    
    @State private var inputText = ""
    
    var body: some View {
        
        TextField("文字を入力", text: $inputText)
            
            .onChange(of: inputText) { [before = inputText] after in
                print("更新前の値: \(before)")
                print("更新後の値: \(after)")
            }
        
    } // body
} // View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicOnChangeView()
    }
}
