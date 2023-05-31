//
//  LineGraphView.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/25.
//
// Chartのラインチャート(折れ線グラフ)

import SwiftUI
import Charts

struct LineGraphView: View {

    static let lineData_test1: [LineData] = [
        .init(week: "月曜日", sales: 2000),
        .init(week: "火曜日", sales: 3000),
        .init(week: "水曜日", sales: 4500),
    ]

    static let lineData_test2: [LineData] = [
        .init(week: "月曜日", sales: 4500),
        .init(week: "火曜日", sales: 1500),
        .init(week: "水曜日", sales: 7000),
    ]

    /// ✅複数のデータをまとめて、カテゴリをつけておく
    let lineData_categories = [
        (category: "ハンバーグ", data: lineData_test1),
        (category: "ラーメン", data: lineData_test2)
    ]

    var body: some View {


        Chart {

            ForEach(lineData_categories, id: \.category) { category in
                ForEach(category.data, id: \.week) {
                    LineMark(
                        x: .value("Week", $0.week),
                        y: .value("Sales", $0.sales)
                    )
                    .annotation(position: .top) {
                        Image(systemName: "star")
                    }
                }
                .foregroundStyle(by: .value("Category", category.category))
            }
        }
        .frame(height: 300)
    }
}

// データモデル(Identifiableに準拠していること)
struct LineData: Identifiable {
    var id: String = UUID().uuidString
    var week: String
    var sales: Int
}

