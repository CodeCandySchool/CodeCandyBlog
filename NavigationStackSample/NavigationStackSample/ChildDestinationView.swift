//
//  ChildDestinationView.swift
//  NavigationStackSample
//
//  Created by Kensuke Nakagawa on 2023/06/09.
//

import SwiftUI

struct ChildDestinationView: View {
    var body: some View {

        NavigationStack {

            List {
                NavigationLink("子ビューに遷移", value: "CodeCandy")
            }
            // 子ビューに遷移
            .navigationDestination(for: String.self) { parentValue in

                HogeView(value: parentValue)

            }
            .navigationTitle("親ビュー")
        }
    }
}

/// 遷移先の子ビューでもnavigationDestinationを定義可能
/// 親ビュー側のnavigationDestinationと指定データ型が同じである場合、意図した遷移が発火しないため注意
struct HogeView: View {

    var value: String

    var body: some View {

        List {
            NavigationLink("子子ビューに遷移", value: 2023)
        }
        .navigationTitle("子ビュー")
        // 子子ビューに遷移
        .navigationDestination(for: Int.self) { childValue in

            VStack {
                Text("\(childValue)年")
                Text(value)
            }
            .font(.title)
            .navigationTitle("子子ビュー")
        }
    }
}
