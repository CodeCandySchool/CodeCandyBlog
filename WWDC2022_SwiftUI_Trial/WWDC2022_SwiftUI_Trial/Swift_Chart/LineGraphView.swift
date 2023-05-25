//
//  LineGraphView.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/25.
//
import SwiftUI
import Charts

struct LineGraphView: View {

    let data_test1: [Data] = [
        .init(name: "2021", value: 1000, color: .green),
        .init(name: "2022", value: 2000, color: .green),
        .init(name: "2023", value: 1500, color: .green)
    ]

    let data_test2: [Data] = [
        .init(name: "2021", value: 1500, color: .blue),
        .init(name: "2022", value: 2500, color: .blue),
        .init(name: "2023", value: 1400, color: .blue)
    ]

    var body: some View {

        Chart() {

            ForEach(data_test1) { dataRow in
                LineMark(
                    x: .value("Name", dataRow.name),
                    y: .value("Value", dataRow.value)
                )
                .foregroundStyle(by: .value("Name", dataRow.name))
            }
        }
        .frame(height: 300)
        .padding()
    }
}
