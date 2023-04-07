//
//  DocumantationComment.swift
//  CommentSample
//
//  Created by Kensuke Nakagawa on 2023/04/07.
//

import SwiftUI

struct DocumentationComment: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    /// この関数は、指定された文字列の最後に指定された文字列を追加します。
    ///
    /// - Parameters:
    ///   - based: 元となる文字列
    ///   - suffix: 追加する文字列
    ///
    /// - Returns: 新しい文字列
    ///
    func appendString(_ based: String, suffix: String) -> String {
        return based + suffix
    }
}

struct DocumentationComment_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationComment()
    }
}
