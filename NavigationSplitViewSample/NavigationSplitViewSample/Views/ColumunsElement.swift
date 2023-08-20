//
//  ColumunsElement.swift
//  NavigationSplitViewSample
//
//  Created by Kensuke Nakagawa on 2023/08/18.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        VStack {
            ForEach(0..<4, id: \.self) { _ in Text("SideBar") }
        }
        .font(.title)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(0..<4, id: \.self) { _ in Text("Content") }
        }
        .font(.title)
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            ForEach(0..<4, id: \.self) { _ in Text("Detail") }
        }
        .font(.title)
    }
}
