//
//  SelectDateFeature.swift
//  MultiDatePickerSample
//
//  Created by Kensuke Nakagawa on 2023/08/16.
//

import SwiftUI




/// 指定日付より"後"の日付のみ選択可能にする
struct SelectDateFuture: View {

    // 環境変数「calendar」「timeZone」を用意
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone

    // 選択可能日付設定を作成
    var bounds: PartialRangeFrom<Date> {
        let start = calendar.date(from: DateComponents(
            timeZone: timeZone,
            year    : 2023,
            month   : 8,
            day     : 20))!

        return start...
    }

    @State private var dates: Set<DateComponents> = []

    var body: some View {

        // 引数「in:」に日付指定設定を渡す
        MultiDatePicker("複数の日付選択", selection: $dates, in: bounds)
    }
}
