//
//  AllMethodsPhotosPicker.swift
//  PhotosPickerSample
//
//  Created by Kensuke Nakagawa on 2023/06/18.
//
// 全ての機能を使ったPhotosPickerの実装まとめ

import SwiftUI
import PhotosUI

struct AllMethodsPhotosPicker: View {
    /// フォトピッカー内で選択したアイテムが保持されるプロパティ
    @State var selectedItems: [PhotosPickerItem] = []
    /// PhotosPickerItem -> UIImageに変換したアイテムを格納するプロパティ
    @State var selectedImages: [UIImage] = []

    var body: some View {

        VStack {
            // 配列内にUIImageデータが存在すれば表示
            if !selectedImages.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(selectedImages, id: \.self) { image in
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 200)
                        }
                    }
                }
            }
            // ピッカーを表示するビュー
            PhotosPicker(
                selection: $selectedItems,
                maxSelectionCount: 3,
                selectionBehavior: .ordered,
                matching: .images
            ) {
                Text("画像を取得")
            }
        }
        .onChange(of: selectedItems) { items in

            // 複数選択されたアイテムをUIImageに変換してプロパティに格納していく
            Task {
                selectedImages = []

                for item in items {
                    guard let data = try await item.loadTransferable(type: Data.self) else { continue }
                    guard let uiImage = UIImage(data: data) else { continue }
                    selectedImages.append(uiImage)
                }
            }
        }
    }
}

struct AllMethodsPhotosPicker_Previews: PreviewProvider {
    static var previews: some View {
        AllMethodsPhotosPicker()
    }
}
