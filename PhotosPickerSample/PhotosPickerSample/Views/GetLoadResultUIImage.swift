//
//  GetResultPick.swift
//  PhotosPickerSample
//
//  Created by Kensuke Nakagawa on 2023/06/24.
//

import SwiftUI
import PhotosUI

struct GetLoadResultUIImage: View {
    /// フォトピッカー内で選択したアイテムが保持されるプロパティ
    @State var selectedItem: PhotosPickerItem?
    /// PhotosPickerItem -> UIImageに変換したアイテムを格納するプロパティ
    @State var selectedImage: UIImage?

    var body: some View {

        PhotosPicker(selection: $selectedItem) {
            Text("フォトピッカーを表示")
        }
        // PhotosPickerItem -> Data -> UIImageに変換
        .onChange(of: selectedItem) { item in

            Task {
                do {
                    guard let data = try await item?.loadTransferable(type: Data.self) else { return }
                    guard let uiImage = UIImage(data: data) else { return }
                    selectedImage = uiImage
                } catch {

                }
            }
        }
    }
}

struct GetResultPick_Previews: PreviewProvider {
    static var previews: some View {
        GetLoadResultUIImage()
    }
}
