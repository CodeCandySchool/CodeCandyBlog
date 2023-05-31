//
//  ContentView.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/25.
//

import SwiftUI
import Charts

struct BarGraphView: View {

    /// Chartに用いるデータ群
    let barData_test: [BarData] = [
        .init(name: "Akiko", value: 90, color: .green),
        .init(name: "Akiko", value: 30, color: .orange),
        .init(name: "Akiko", value: 40, color: .pink),
        .init(name: "Jun", value: 65, color: .green),
        .init(name: "Jun", value: 50, color: .orange),
        .init(name: "Jun", value: 80, color: .pink),
        .init(name: "Kenta", value: 80, color: .green),
        .init(name: "Kenta", value: 55, color: .orange),
        .init(name: "Kenta", value: 76, color: .pink),
    ]

    var body: some View {

        /// ✅Chart自身にデータ群を渡すパターン
        Chart(barData_test) { dataRow in
            BarMark(
                x: .value("Name", dataRow.name),
                y: .value("Value", dataRow.value)
            )
            .foregroundStyle(dataRow.color)
            .position(by: .value("Category", dataRow.value))
        }
        .frame(height: 300)

    }
}

// データモデル(Identifiableに準拠していること)
struct BarData: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var value: Int
    var color: Color = .green
}
