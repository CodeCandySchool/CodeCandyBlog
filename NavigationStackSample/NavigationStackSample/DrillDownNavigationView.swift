//
//  AccumulatedView.swift
//  NavigationStackSample
//
//  Created by Kensuke Nakagawa on 2023/06/02.
//
// NavigationStackにおけるドリルダウン方式の遷移実装

import SwiftUI

// 配列パスとして使う列挙型
enum SamplePath {
    case pathA, pathB, pathC, pathD
}

struct DrillDownNavigationView: View {

    @State private var navigatePath: [SamplePath] = []

    var body: some View {

        NavigationStack(path: $navigatePath) {

            VStack(spacing: 30) {
                List {
                    Button("複数のビューへ一気に遷移") {
                        navigatePath.append(contentsOf: [.pathA, .pathB, .pathC, .pathD])
                    }
                }
            }
            .navigationTitle("ホーム画面")

            // 受け取ったenumのケースを用いて遷移先のビューを分岐
            .navigationDestination(for: SamplePath.self) { value in

                // 遷移先で配列パスを操作する場合は参照を渡す
                switch value {

                case .pathA:
                    PathAView(path: $navigatePath)

                case .pathB:
                    PathBView(path: $navigatePath)

                case .pathC:
                    PathCView(path: $navigatePath)

                case .pathD:
                    PathDView(path: $navigatePath)

                }
            }
        }
    }
}

struct PathAView: View {

    @Binding var path: [SamplePath]

    var body: some View {

        List {
            Button("B画面に遷移") {
                path.append(.pathB)
            }
        }
        .navigationTitle("A画面")

    }
}

struct PathBView: View {

    @Binding var path: [SamplePath]

    var body: some View {

        List {
            Button("C画面に遷移") {
                path.append(.pathC)
            }
        }
        .navigationTitle("B画面")
    }
}

struct PathCView: View {

    // ルート階層から受け取った配列パスの参照
    @Binding var path: [SamplePath]

    var body: some View {

        List {
            Button("D画面へ遷移") {
                path.append(.pathD)
            }
        }
        .navigationTitle("C画面")
    }
}

struct PathDView: View {

    @Binding var path: [SamplePath]

    var body: some View {

        List {
            Button("最初の画面に戻る") {
                path.removeLast(path.count)
            }
        }
        .navigationTitle("D画面")
    }
}


struct AccumulatedView_Previews: PreviewProvider {
    static var previews: some View {
        DrillDownNavigationView()
    }
}
