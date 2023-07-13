//
//  GaugeSize.swift
//  GaugeSample
//
//  Created by Kensuke Nakagawa on 2023/07/13.
//

import SwiftUI

/// ライン型のゲージにおけるサイズ変更
/// frame設定はwidthのみゲージに反映される。
struct LineGaugeSize: View {
    @State private var currentValue = 67.0
    @State private var minValue = 0.0
    @State private var maxValue = 170.0

    var body: some View {

        VStack {
            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(.accessoryLinearCapacity)
            .frame(height: 300) // 👈 heightは外観変化しない
            .padding()

            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(.accessoryLinearCapacity)
            .frame(width: 200)
            .padding()

            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(.accessoryLinearCapacity)
            .frame(width: 100)
            .padding()
        }
    }
}

/// サークル型のフレーム指定による外観の変化
/// width, height, どちらもゲージの外観は変化しない
struct CircleGaugeSize: View {
    @State private var currentValue = 67.0
    @State private var minValue = 0.0
    @State private var maxValue = 170.0

    var body: some View {

        VStack {
            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(.accessoryCircular)
            .frame(height: 200) // 👈
            .padding()

            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .frame(width: 200)  // 👈
            .padding()
        }
    }
}

/// scaleEffectを使ってゲージ本体のサイズを変更できる
/// ゲージ自身のビュー領域は変化しないので注意
struct ScaleEffectGaugeSize: View {
    @State private var currentValue = 67.0
    @State private var minValue = 0.0
    @State private var maxValue = 170.0

    var body: some View {

        VStack(spacing: 40) {

            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(.accessoryCircular)
            .padding()
            .border(.red, width: 5)

            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(.accessoryCircular)
            .frame(width: 100, height: 100) // 👈領域を確保
            .scaleEffect(2.0)
            .padding()
            .border(.red, width: 5)

            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("BPM")
            } currentValueLabel: {
                Text("\(Int(currentValue))")
            }
            .gaugeStyle(.accessoryCircular)
            .frame(width: 200, height: 200) // 👈領域を確保
            .scaleEffect(3.0)
            .padding()
            .border(.red, width: 5)
        }
    }
}
