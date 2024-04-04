//
//  AlbumView.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 31.03.2024.
//

import SwiftUI

struct AlbumView: View {
    var  uploadedPhotosViewModel: UploadedPhotosViewModel
    let text: String

    var body: some View {
        VStack(alignment: .leading){

            Text(uploadedPhotosViewModel.petsName)
                .font(.title)
                .bold()
                .padding(.vertical, 6)
            Text(text)
            PhotoGrid(images: uploadedPhotosViewModel.uploadedImages)
            Spacer()
        }.padding()
    }
}

#Preview {
    AlbumView(uploadedPhotosViewModel: UploadedPhotosViewModel(), text: "Cartoon Characters")
}
