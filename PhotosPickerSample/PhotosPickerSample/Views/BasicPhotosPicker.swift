//
//  BasicPhotosPicker.swift
//  PhotosPickerSample
//
//  Created by Kensuke Nakagawa on 2023/06/17.
//

import SwiftUI
import PhotosUI // ❶フレームワークをインポート

struct BasicPhotosPicker: View {
    /// ❷フォトピッカー内で選択したアイテムが保持されるプロパティ
    @State var selectedItem: PhotosPickerItem?

    var body: some View {

        // ❸フォトピッカーを表示するビュー
        PhotosPicker(selection: $selectedItem) {
            Text("フォトピッカーを表示")
        }
    }
}

struct BasicPhotosPicker_Previews: PreviewProvider {
    static var previews: some View {
        BasicPhotosPicker()
    }
}
