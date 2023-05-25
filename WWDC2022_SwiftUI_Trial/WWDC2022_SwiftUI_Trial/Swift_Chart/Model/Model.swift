//
//  Model.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/25.
//

import SwiftUI

// データモデル(Identifiableに準拠していること)
struct Data: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var value: Int
    var color: Color = .green
}
