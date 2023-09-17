//
//  SelectDatePast.swift
//  MultiDatePickerSample
//
//  Created by Kensuke Nakagawa on 2023/08/16.
//

import SwiftUI

/// 指定日付より"前"の日付のみ選択可能にする
struct SelectDatePast: View {

    // 環境変数「calendar」「timeZone」を用意
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone

    // 選択可能な日付の範囲を作成
    var bounds: PartialRangeUpTo<Date> {
        let end = calendar.date(from: DateComponents(
            timeZone: timeZone,
            year    : 2023,
            month   : 8,
            day     : 19))!

        return ..<end
    }

    @State private var dates: Set<DateComponents> = []

    var body: some View {

        // 引数「in:」に日付の範囲を指定する
        MultiDatePicker("複数の日付選択", selection: $dates, in: bounds)
    }
}
