//
//  PhotosPickerOptions.swift
//  PhotosPickerSample
//
//  Created by Kensuke Nakagawa on 2023/06/18.
//

import SwiftUI
import PhotosUI

struct PhotosPickerOptions: View {
    
    @State var selectedItem: [PhotosPickerItem] = []

    var body: some View {

        PhotosPicker(
            selection: $selectedItem,
            maxSelectionCount: 3,
            selectionBehavior: .ordered
        ) {
            Text("フォトピッカーを表示")
        }
    }
}






struct PhotosPickerOptions_Previews: PreviewProvider {
    static var previews: some View {
        PhotosPickerOptions()
    }
}
