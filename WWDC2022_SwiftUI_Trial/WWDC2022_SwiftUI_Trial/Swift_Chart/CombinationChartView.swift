//
//  CombinationChartView.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/30.
//
// Chartの複数個のラインチャート実装

import SwiftUI
import Charts

struct CombinationChartView: View {

    let data_test = [
        Data(week: "月", avarageSales: 1500, maxSales: 2500, minSales: 1000),
        Data(week: "火", avarageSales: 2500, maxSales: 3000, minSales: 1200),
        Data(week: "水", avarageSales: 1800, maxSales: 2400, minSales: 1500),
        Data(week: "木", avarageSales: 3200, maxSales: 3800, minSales: 2400),
        Data(week: "金", avarageSales: 4200, maxSales: 4600, minSales: 2700),
        Data(week: "土", avarageSales: 2300, maxSales: 3500, minSales: 2000),
        Data(week: "日", avarageSales: 2500, maxSales: 3100, minSales: 2000),
    ]

    var body: some View {

        Chart {
            ForEach(data_test) { dataRow in

                // ✅最大値、最小値をエリアで表示
                BarMark(x: .value("Week", dataRow.week),
                         yStart: .value("MinSales", dataRow.minSales),
                         yEnd: .value("MaxSales", dataRow.maxSales)
                )
                .opacity(0.3)

                RectangleMark(
                    x: .value("Week", dataRow.week),
                    y: .value("Avarage", dataRow.avarageSales),
                    height: 3
                )
            }
        }
        .frame(height: 300)
    }
}

struct Data: Identifiable {
    var id: String = UUID().uuidString
    var week: String
    var avarageSales: Int
    var maxSales: Int
    var minSales: Int
}
