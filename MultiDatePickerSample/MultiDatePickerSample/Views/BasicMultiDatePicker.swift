//
//  BasicMultiDatePicker.swift
//  MultiDatePickerSample
//
//  Created by Kensuke Nakagawa on 2023/08/16.
//

import SwiftUI

/// MultiDatePickerの基本的な記述
struct BasicMultiDatePicker: View {
    // 選択日付を保持するプロパティ
    @State private var dates: Set<DateComponents> = []

    var body: some View {

        MultiDatePicker("複数の日付選択", selection: $dates)
    }
}
