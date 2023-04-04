//
//  CountOnChangeView.swift
//  OnChangeApp
//
//  Created by Kensuke Nakagawa on 2023/04/04.
//

import SwiftUI

struct NotExecutedOnChangeView: View {
    @State private var isCheck: Bool = false
    var body: some View {

        VStack {
            Button("falseを代入") {
               isCheck = false
            }
            .buttonStyle(.borderedProminent)
            
            Button("trueを代入") {
               isCheck = true
            }
            .buttonStyle(.borderedProminent)
        }
        
        .onChange(of: isCheck) { newValue in
            print("isCheckが更新されました")
        }
    }
}

struct CountOnChangeView_Previews: PreviewProvider {
    static var previews: some View {
        NotExecutedOnChangeView()
    }
}

