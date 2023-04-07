//
//  ContentView.swift
//  CommentSample
//
//  Created by Kensuke Nakagawa on 2023/04/06.
//

import SwiftUI

struct BasicCommentView: View {
    var body: some View {
        VStack {
            // 単一行のコメント
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            /*
             複数行のコメント
             複数行のコメント
             複数行のコメント
             複数行のコメント
             */
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicCommentView()
    }
}
/*
 複数行のコメント
 ...
 ...
 ...
 */
