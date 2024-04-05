//
//  AlbumView.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 31.03.2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct AlbumView: View {
    var  uploadedPhotosViewModel: UploadedPhotosViewModel
    let text: String
    let petsName: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(petsName)
                .font(.title)
                .bold()
                .padding(.vertical, 6)
            Text(text)
            PhotoGrid(images: uploadedPhotosViewModel.uploadedImages)
            Spacer()
        }.padding()
    }
}

//#Preview {
//        AlbumView(uploadedPhotosViewModel: UploadedPhotosViewModel(), text: "Cartoon Characters")
//}
