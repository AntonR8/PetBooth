//
//  AlbumCoverView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct AlbumCoverView: View {
    let myColumns = [
        GridItem(),
        GridItem()
    ]
    var uploadedPhotosViewModel: UploadedPhotosViewModel

    let petName: String = "Teddy"
    let text: String = "Cartoon Characters"

    var body: some View {
        VStack(alignment: .leading){
            Text("")
                .padding(30)
            LazyVGrid(columns: myColumns) {
                NavigationLink {
                    AlbumView(uploadedPhotosViewModel: uploadedPhotosViewModel, text: text)
                } label: {
                    if let image = uploadedPhotosViewModel.uploadedImages.first {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width/2.3, height: UIScreen.main.bounds.width/2.3)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    }
                }
            }
            Text(petName)
                .bold()
                .padding(.vertical, 6)
            Text(text)
                .font(.footnote)
                .foregroundStyle(.gray)


            Spacer()
        }.padding()
    }
}

//#Preview {
//        AlbumCoverView(uploadedPhotosViewModel: UploadedPhotosViewModel())
//}
