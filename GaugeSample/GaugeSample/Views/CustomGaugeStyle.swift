//
//  CustomGaugeStyle.swift
//  GaugeSample
//
//  Created by Kensuke Nakagawa on 2023/07/13.
//

import SwiftUI

/// レベルと経験値を表現したカスタムゲージビュー
struct LevelGaugeView: View {
    @State private var level = 25
    @State private var currentExperience = 550.0
    @State private var minExperience = 0.0
    @State private var maxExperience = 1000.0

    var body: some View {
        Gauge(value: currentExperience, in: minExperience...maxExperience) {
            Text("\(level)")
        } currentValueLabel: {
            Text("\(Int(currentExperience))")
        }
        .gaugeStyle(LevelGaugeStyle()) // 👈 カスタムゲージスタイル
        .padding()
    }
}

/// カスタムゲージスタイルの作成
/// GaugeStyleプロトコルに準拠させる
struct LevelGaugeStyle: GaugeStyle {

    let gradient = LinearGradient(colors: [.orange, .red], startPoint: .leading, endPoint: .trailing)

    func makeBody(configuration: Configuration) -> some View {
        ZStack {

            Circle()
                .foregroundColor(Color(.systemGray6))

            Circle()
                .trim(from: 0, to: 0.75 * configuration.value)
                .stroke(gradient, lineWidth: 20)
                .rotationEffect(.degrees(135))

            Circle()
                .trim(from: 0, to: 0.75)
                .stroke(Color.black, style: StrokeStyle(lineWidth: 10,
                                                        lineCap: .butt,
                                                        dash: [1, 34]))
                .rotationEffect(.degrees(135))

            VStack {
                Text("Level")
                    .font(.title)
                    .bold()
                    .foregroundColor(.gray)

                configuration.label
                    .font(.system(size: 80, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
            }

        }
        .frame(width: 300, height: 300)
    }
}

struct LevelGaugeView_Previews: PreviewProvider {
    static var previews: some View {
        LevelGaugeView()
    }
}
