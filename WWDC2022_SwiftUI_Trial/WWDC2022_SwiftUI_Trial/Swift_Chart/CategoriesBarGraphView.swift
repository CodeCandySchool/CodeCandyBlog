//
//  CategoriesBarGraphView.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/30.
//

import SwiftUI
import Charts

struct CategoriesBarGraphView: View {

    /// Chartに用いるデータ群
    let barData_test: [CategoryBarData] = [
        .init(name: "Akiko", value: 90, category: "国語"),
        .init(name: "Akiko", value: 30, category: "英語"),
        .init(name: "Akiko", value: 40, category: "数学"),
        .init(name: "Jun",   value: 65, category: "国語"),
        .init(name: "Jun",   value: 50, category: "英語"),
        .init(name: "Jun",   value: 80, category: "数学"),
        .init(name: "Kenta", value: 80, category: "国語"),
        .init(name: "Kenta", value: 55, category: "英語"),
        .init(name: "Kenta", value: 76, category: "数学"),
    ]

    var body: some View {

        /// ✅Chart自身にデータ群を渡すパターン
        Chart {
            ForEach(barData_test) { dataRow in
                BarMark(
                    x: .value("Name", dataRow.name),
                    y: .value("Value", dataRow.value)
                )
                .foregroundStyle(by: .value("Category", dataRow.category))
                .position(by: .value("Category", dataRow.category))
                .annotation(position: .top) {
                    Image(systemName: "star")
                }
            }
        }
        .frame(height: 300)

    }
}

// データモデル(Identifiableに準拠していること)
struct CategoryBarData: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var value: Int
    var category: String
}
