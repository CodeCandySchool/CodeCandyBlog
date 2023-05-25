//
//  ContentView.swift
//  WWDC2022_SwiftUI_Trial
//
//  Created by Kensuke Nakagawa on 2023/05/25.
//

import SwiftUI
import Charts

struct BarGraphView: View {

    let data_test: [Data] = [
        .init(name: "Akiko", value: 90, color: .green),
        .init(name: "Jun"  , value: 65, color: .red),
        .init(name: "Kenta", value: 80, color: .orange)
    ]

    var body: some View {

        Chart(data_test) { dataRow in
            BarMark(
                x: .value("Name", dataRow.name),
                y: .value("Value", dataRow.value)
            )
            .foregroundStyle(dataRow.color)
        }
        .frame(height: 300)
        .padding()
    }
}
