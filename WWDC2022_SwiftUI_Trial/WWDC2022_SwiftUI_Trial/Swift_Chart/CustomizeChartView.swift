//
//  CustomizeChartView.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/31.
//
// X・Y軸ガイドの細かなカスタマイズ

import SwiftUI
import Charts

struct CustomizeChartView: View {

    let data_test: [CustomizeData] = [
        .init(month: DateComponents(calendar: .current, year: 2023, month: 1).date!, sales: 1000),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 2).date!, sales: 1200),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 3).date!, sales: 1100),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 4).date!, sales: 1500),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 5).date!, sales: 1300),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 6).date!, sales: 1500),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 7).date!, sales: 1400),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 8).date!, sales: 1600),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 9).date!, sales: 1300),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 10).date!, sales: 1200),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 11).date!, sales: 1500),
        .init(month: DateComponents(calendar: .current, year: 2023, month: 12).date!, sales: 700),
    ]

    var body: some View {
        Chart {
            ForEach(data_test) { dataRow in
                BarMark(x: .value("Month", dataRow.month),
                        y: .value("Value", dataRow.sales)
                )
            }
        }
        .chartYAxis {
            AxisMarks()
        }
        .chartXAxis {
            AxisMarks(values: .stride(by: .month)) { value in
                AxisGridLine().foregroundStyle(.black)
                AxisTick().foregroundStyle(.black)
                AxisValueLabel(
                    format: .dateTime.month(.narrow)
                )
            }
        }
        .frame(height: 300)
        .padding()
    }
}

struct CustomizeChartView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeChartView()
    }
}

struct CustomizeData: Identifiable {
    var id = UUID()
    var month: Date
    var sales: Int
}
