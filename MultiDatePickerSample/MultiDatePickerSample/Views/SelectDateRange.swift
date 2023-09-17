//
//  SelectDateRange.swift
//  MultiDatePickerSample
//
//  Created by Kensuke Nakagawa on 2023/08/16.
//

import SwiftUI




/// 選択できる日付を範囲指定する
struct SelectDateRange: View {

    // 環境変数「calendar」「timeZone」を用意
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone

    var bounds: Range<Date> {
        // 選択日付の始まりを設定
        let start = calendar.date(from: DateComponents(
            timeZone: timeZone, year: 2023, month: 8, day: 20))!
        // 選択日付の終わりを設定
        let end = calendar.date(from: DateComponents(
            timeZone: timeZone, year: 2023, month: 8, day: 27))!

        return start ..< end
    }
    
    @State private var dates: Set<DateComponents> = []

    var body: some View {

        // 引数「in:」に日付の範囲を指定する
        MultiDatePicker("複数の日付選択", selection: $dates, in: bounds)
    }
}
