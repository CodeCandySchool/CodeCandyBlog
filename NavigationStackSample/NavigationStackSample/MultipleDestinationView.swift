//
//  MultipleDestinationView.swift
//  NavigationStackSample
//
//  Created by Kensuke Nakagawa on 2023/06/09.
//

import SwiftUI

/// 複数のnavigationDestination定義
/// 渡されるデータ型によって遷移先を散らすことができる
struct MultipleDestinationView: View {

    // 値渡しに使うにはHashable準拠が必要
    struct Person: Hashable {
        var name: String
        var age: Int
    }

    var body: some View {

        NavigationStack {

            List {
                NavigationLink("Stringデータを渡す", value: "CodeCandy")
                NavigationLink("Intデータを渡す", value: 100)
                NavigationLink("structデータを渡す", value: Person(name: "スウィフト太郎", age: 18))
            }
            /// Stringを受け取って遷移
            .navigationDestination(for: String.self) { stringValue in

                VStack(spacing: 30) {
                    Text("Stringデータを受け取りました")
                    Text("データ: \(stringValue)")
                }
                .font(.title)

            }
            /// Intを受け取って遷移
            .navigationDestination(for: Int.self) { intValue in

                VStack(spacing: 30) {
                    Text("Intデータを受け取りました")
                    Text("データ: \(intValue)")
                }
                .font(.title)

            }
            /// structを受け取って遷移
            .navigationDestination(for: Person.self) { structValue in

                VStack(spacing: 30) {
                    Text("structデータを受け取りました")
                    Text("名前: \(structValue.name)")
                    Text("年齢: \(structValue.age)")
                }
                .font(.title)
            }
            .navigationTitle("ホーム画面")
        }
    }
}

struct MultipleDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleDestinationView()
    }
}
