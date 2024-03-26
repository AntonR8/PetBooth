//
//  AlbumView.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 31.03.2024.
//

import SwiftUI

struct AlbumView: View {
    let myColumns = [
    GridItem(),
    GridItem()
    ]
    let images: [UIImage]
   var  uploadedPhotosViewModel = UploadedPhotosViewModel()
    let text: String
    var body: some View {
        VStack(alignment: .leading){

            Text(uploadedPhotosViewModel.petsName)
                .font(.title)
                .bold()
                .padding(.vertical, 6)
            Text(text)
            LazyVGrid (columns: myColumns) {
                ForEach(images, id: \.self) {photo in
                    Image(uiImage: photo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width/2.3, height: UIScreen.main.bounds.width/2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .padding(4)
                }
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    AlbumView(images: [], text: "Cartoon Characters")
}
