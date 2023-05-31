//
//  ChartView.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/29.
//
// Chartの基本的な記述方法

import SwiftUI
import Charts

struct ChartView: View {

    /// Chartに用いるデータ群
    let data_test: [BarData] = [
        .init(name: "Akiko", value: 90, color: .green),
        .init(name: "Jun"  , value: 65, color: .red),
        .init(name: "Kenta", value: 80, color: .orange)
    ]

    var body: some View {

        /// ✅要素分のMarkを定義するパターン
        Chart {
            BarMark(
                x: .value("Name", data_test[0].name),
                y: .value("Value", data_test[0].value)
            )
            BarMark(
                x: .value("Name", data_test[1].name),
                y: .value("Value", data_test[1].value)
            )
            BarMark(
                x: .value("Name", data_test[2].name),
                y: .value("Value", data_test[2].value)
            )
        }

        /// ✅Chart内にForEachを定義するパターン
        Chart {
            ForEach(data_test) { dataRow in
                BarMark(
                    x: .value("Name", dataRow.name),
                    y: .value("Value", dataRow.value)
                )
            }
        }

        /// ✅Chart自身にデータ群を渡すパターン
        Chart(data_test) { dataRow in
            BarMark(
                x: .value("Name", dataRow.name),
                y: .value("Value", dataRow.value)
            )
        }

    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
