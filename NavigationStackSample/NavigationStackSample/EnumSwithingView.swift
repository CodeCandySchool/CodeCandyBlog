//
//  EnumSwithingView.swift
//  NavigationStackSample
//
//  Created by Kensuke Nakagawa on 2023/06/02.
//

import SwiftUI

struct EnumSwithingView: View {

    enum SamplePath {
        case first, second, third
    }

    @State private var navigatePath: [SamplePath] = []

    var body: some View {

        NavigationStack(path: $navigatePath) {

            VStack(spacing: 30) {
                Button("配列パスに「.first」を渡す") {
                    navigatePath.append(.first)
                }

                Button("配列パスに「.second」を渡す") {
                    navigatePath.append(.second)
                }

                Button("配列パスに「.third」を渡す") {
                    navigatePath.append(.third)
                }
            }
            .navigationDestination(for: SamplePath.self) { value in

                switch value {

                case .first:
                    FirstView()

                case .second:
                    SecondView()

                case .third:
                    ThirdView()
                }
            }
        }
    }
}

struct FirstView: View {
    var body: some View {
        Text("FirstView")
            .font(.largeTitle)
    }
}

struct SecondView: View {
    var body: some View {
        Text("SecondView")
            .font(.largeTitle)
    }
}

struct ThirdView: View {
    var body: some View {
        Text("ThirdView")
            .font(.largeTitle)
    }
}

struct EnumSwithingView_Previews: PreviewProvider {
    static var previews: some View {
        EnumSwithingView()
    }
}



