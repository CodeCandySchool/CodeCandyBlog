//
//  GaugeStyle.swift
//  GaugeSample
//
//  Created by Kensuke Nakagawa on 2023/07/11.
//

import SwiftUI

struct GaugeStyleChange: View {
    @State private var currentValue = 67.0
    @State private var minValue = 0.0
    @State private var maxValue = 170.0

    var body: some View {
        Gauge(value: currentValue, in: minValue...maxValue) {
            Text("BPM")
        } currentValueLabel: {
            Text("\(Int(currentValue))")
        } minimumValueLabel: {
            Text("\(Int(minValue))")
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
        }
        .gaugeStyle(.accessoryCircular) // 👈スタイルを変更
        .padding()
    }
}
