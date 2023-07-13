//
//  GaugeColor.swift
//  GaugeSample
//
//  Created by Kensuke Nakagawa on 2023/07/11.
//

import SwiftUI

/// ゲージのカラー変更
struct GaugeColor: View {
    @State private var currentValue = 67.0
    @State private var minValue = 0.0
    @State private var maxValue = 170.0

    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])

    var body: some View {
        Gauge(value: currentValue, in: minValue...maxValue) {
            Text("BPM")
        } currentValueLabel: {
            Text("\(Int(currentValue))")
                .foregroundColor(.green) // 👈ゲージのラベル色変更
        } minimumValueLabel: {
            Text("\(Int(minValue))")
                .foregroundColor(.green)
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
                .foregroundColor(.red)
        }
        .gaugeStyle(.accessoryCircular)
        .tint(gradient) // 👈ゲージ本体のカラー変更
        .padding()
    }
}
