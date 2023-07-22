//
//  GridViewSample.swift
//  GridSample
//
//  Created by Kensuke Nakagawa on 2023/07/21.
//

import SwiftUI

/// グリッドビューを用いたレイアウトのサンプル
struct GridViewSample: View {
    var body: some View {

        Grid(horizontalSpacing: 5, verticalSpacing: 10) {

            TitleView() //全てのセル/列を跨ぐビュー

            Divider()
                .gridCellUnsizedAxes(.horizontal) // グリッドの範囲内に収める

            GridRow { SymbolView() }.font(.largeTitle)
            GridRow { FigureView() }.font(.largeTitle)
        }
    }
    @ViewBuilder
    func TitleView() -> some View {
        HStack(spacing: 10) {
            Image(systemName: "trophy.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            Text("Sports")
                .tracking(4)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue.gradient)
                }
        }
    }
    @ViewBuilder
    func SymbolView() -> some View {
        Image(systemName: "tennis.racket")
        Image(systemName: "basketball.fill")
        Image(systemName: "baseball.fill")
        Image(systemName: "soccerball.inverse")
        Image(systemName: "volleyball.fill")
    }
    @ViewBuilder
    func FigureView() -> some View {
        Image(systemName: "figure.tennis")
        Image(systemName: "figure.basketball")
        Image(systemName: "figure.baseball")
        Image(systemName: "figure.soccer")
        Image(systemName: "figure.volleyball")
    }
}

struct GridViewSample_Previews: PreviewProvider {
    static var previews: some View {
        GridViewSample()
    }
}
