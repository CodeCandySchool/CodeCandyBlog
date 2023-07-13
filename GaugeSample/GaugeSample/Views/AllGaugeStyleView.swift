//
//  AllGaugeStyleView.swift
//  GaugeSample
//
//  Created by Kensuke Nakagawa on 2023/07/13.
//

import SwiftUI

struct AllGaugeStyleView: View {

    @State private var currentValue = 50.0
    @State private var minValue = 0.0
    @State private var maxValue = 100.0

    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])

    var body: some View {

        VStack(spacing: 40) {

            Text("Gauge")
                .tracking(3)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .padding()

            HStack(spacing: 30) {
                Gauge(value: currentValue, in: minValue...maxValue) {
                    Text("")
                } currentValueLabel: {
                    Text("\(Int(currentValue))")
                        .foregroundColor(.gray)
                } minimumValueLabel: {
                    Text("\(Int(minValue))")
                        .foregroundColor(.gray)
                } maximumValueLabel: {
                    Text("\(Int(maxValue))")
                        .foregroundColor(.gray)
                }
                .gaugeStyle(.accessoryCircular)
                .tint(gradient)

                Gauge(value: currentValue, in: minValue...maxValue) {
                    Text("")
                } currentValueLabel: {
                    Text("\(Int(currentValue))")
                        .foregroundColor(.gray)
                } minimumValueLabel: {
                    Text("\(Int(minValue))")
                        .foregroundColor(.gray)
                } maximumValueLabel: {
                    Text("\(Int(maxValue))")
                        .foregroundColor(.gray)
                }
                .gaugeStyle(.accessoryCircularCapacity)
                .tint(gradient)
            }

            VStack(spacing: 50) {
                Gauge(value: currentValue, in: minValue...maxValue) {
                    Text("")
                } currentValueLabel: {
                    Text("\(Int(currentValue))")
                        .foregroundColor(.gray)
                } minimumValueLabel: {
                    Text("\(Int(minValue))")
                        .foregroundColor(.gray)
                } maximumValueLabel: {
                    Text("\(Int(maxValue))")
                        .foregroundColor(.gray)
                }
                .gaugeStyle(.linearCapacity)
                .tint(.green)

                Gauge(value: currentValue, in: minValue...maxValue) {
                    Text("")
                } currentValueLabel: {
                    Text("\(Int(currentValue))")
                        .foregroundColor(.gray)
                } minimumValueLabel: {
                    Text("\(Int(minValue))")
                        .foregroundColor(.gray)
                } maximumValueLabel: {
                    Text("\(Int(maxValue))")
                        .foregroundColor(.gray)
                }
                .gaugeStyle(.accessoryLinear)
                .tint(.yellow)

                Gauge(value: currentValue, in: minValue...maxValue) {
                    Text("")
                } currentValueLabel: {
                    Text("\(Int(currentValue))")
                        .foregroundColor(.gray)
                } minimumValueLabel: {
                    Text("\(Int(minValue))")
                        .foregroundColor(.gray)
                } maximumValueLabel: {
                    Text("\(Int(maxValue))")
                        .foregroundColor(.gray)
                }
                .gaugeStyle(.accessoryLinearCapacity)
                .tint(.red)
            }
            .padding()

            Button("値を足す") {
                withAnimation(.easeInOut(duration: 2)) {
                    currentValue = 100.0
                }
            }

            Button("値を減らす") {
                withAnimation(.easeInOut(duration: 2)) {
                    currentValue = 50.0
                }
            }
        }
    }
}

struct AllGaugeStyleView_Previews: PreviewProvider {
    static var previews: some View {
        AllGaugeStyleView()
    }
}
