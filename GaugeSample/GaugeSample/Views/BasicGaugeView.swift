//
//  BasicGaugeView.swift
//  GaugeSample
//
//  Created by Kensuke Nakagawa on 2023/07/11.
//

import SwiftUI

/// Gaugeの最もシンプルなコード
struct BasicGaugeView: View {
    /// ゲージ量の現在値
    @State private var currentValue = 0.4

    var body: some View {
        Gauge(value: currentValue) {
            VStack {
                Text("シンプルなゲージビュー")
            }
        }
        .padding()
    }
}

/// ゲージ値の幅を設定する
struct CustomRangeGaugeView: View {
    /// ゲージの現在値
    @State private var currentValue = 700.0
    /// ゲージの最小値、最大値
    @State private var minValue = 0.0
    @State private var maxValue = 1000.0

    var body: some View {
        Gauge(value: currentValue, in: minValue...maxValue) {
            Text("ゲージ幅を設定")
        }
        .padding()
    }
}
