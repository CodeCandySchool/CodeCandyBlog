//
//  AnnotationCommentView.swift
//  CommentSample
//
//  Created by Kensuke Nakagawa on 2023/04/06.
//

import SwiftUI

struct AnnotationCommentView: View {
    var body: some View {
        // TODO: ここにタスクを入力
        VStack {
            Text("Hello,world!")
        }
    }
    
    // MARK: - ここからメソッド
    func sampleMethod() {
        // FIXME: メソッド内の〜にバグがある
        // ...
    }
}

struct AnnotationCommentView_Previews: PreviewProvider {
    static var previews: some View {
        AnnotationCommentView()
    }
}
