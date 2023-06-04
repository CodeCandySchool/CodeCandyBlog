//
//  HalfsheetView.swift
//  HalfSheetSample
//
//  Created by Kensuke Nakagawa on 2023/06/04.
//

import SwiftUI

struct HalfsheetView: View {

    @State private var isShowSheet = false

    var body: some View {

        Button("シートを表示") {
            isShowSheet.toggle()
        }
        .sheet(isPresented: $isShowSheet) {

            HalfSheetDetails(show: $isShowSheet)
                .presentationDetents([
                    .medium,
                    .large,
                    .height(200),
                    .fraction(0.8)
                ])
        }
    }
}

struct HalfSheetDetails: View {

    @Binding var show: Bool

    var body: some View {
        VStack(spacing: 30) {
            Text("ハーフシート画面").font(.largeTitle)
            Button("シートを閉じる") {
                show.toggle()
            }
        }
    }
}

struct HalfsheetView_Previews: PreviewProvider {
    static var previews: some View {
        HalfsheetView()
    }
}
