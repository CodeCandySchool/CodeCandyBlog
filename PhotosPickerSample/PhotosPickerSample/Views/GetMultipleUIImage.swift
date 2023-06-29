//
//  GetMultipleUIImage.swift
//  PhotosPickerSample
//
//  Created by Kensuke Nakagawa on 2023/06/29.
//

import SwiftUI
import PhotosUI

struct GetMultipleUIImage: View {
    /// フォトピッカー内で選択した複数のアイテムが保持されるプロパティ
    @State var selectedItems: [PhotosPickerItem] = []
    /// PhotosPickerItem -> UIImageに変換した複数のアイテムを格納するプロパティ
    @State var selectedImages: [UIImage] = []

    var body: some View {

        PhotosPicker(selection: $selectedItems) {
            Text("フォトピッカーを表示")
        }
        .onChange(of: selectedItems) { items in

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

struct GetMultipleUIImage_Previews: PreviewProvider {
    static var previews: some View {
        GetMultipleUIImage()
    }
}
