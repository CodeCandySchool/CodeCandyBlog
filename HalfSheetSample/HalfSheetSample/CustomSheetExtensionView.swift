//
//  CustomSheetExtensionView.swift
//  HalfSheetSample
//
//  Created by Kensuke Nakagawa on 2023/06/04.
//

import SwiftUI

// シート幅のカスタム指定をextensionで管理
extension PresentationDetent {
    static let small = Self.height(100)
    static let big = Self.fraction(0.75)
}

struct CustomSheetExtensionView: View {

    @State private var isShowSheet = false

    var body: some View {

        Button("シートを表示") {
            isShowSheet.toggle()
        }
        .sheet(isPresented: $isShowSheet) {

            HalfSheetDetails(show: $isShowSheet)
                // ✅管理したカスタム指定が使える
                .presentationDetents([
                    .small,
                    .medium,
                    .big,
                    .large
                ])
        }
    }
}

struct CustomSheetExtensionView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSheetExtensionView()
    }
}
