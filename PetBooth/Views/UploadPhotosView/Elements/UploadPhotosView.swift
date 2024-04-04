//
//  UploadPhotosView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 28.03.2024.
//

import SwiftUI
import PhotosUI


struct UploadPhotosView: View {
    var vm = ViewModel()
    @StateObject var uploadedPhotosViewModel = UploadedPhotosViewModel()
    let myColumns = [
        GridItem(),
        GridItem()
    ]

    var body: some View {
        NavigationView {
            ZStack{
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                    ProgressAndTitle(progress: 1, title: "Upload photos")
                    switch uploadedPhotosViewModel.uploadedImages.isEmpty {
                    case true: ExamplePhotosView(selectedItems: $uploadedPhotosViewModel.selectedItems)
                    case false:
                        Text("Please select 10-12 photos")
                            .foregroundStyle(.secondary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()

                        Text("This photo cannot be used. Please choose another photo.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)

                    UploadedPhotoGrid(photos: uploadedPhotosViewModel.uploadedImages, suitable: false)

                    Text("").padding()
                    

                        Text("This photo is suitable for use.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)

                    UploadedPhotoGrid(photos: uploadedPhotosViewModel.uploadedImages, suitable: true)

                        HStack{
                            PhotosPicker(
                                selection: $uploadedPhotosViewModel.selectedItems,
                                matching: .images
                            ) {
                                StrokeButton(title: .addPhoto)
                                    }
                            NavigationLink(destination: CreateAlbumView(uploadedPhotosViewModel: uploadedPhotosViewModel)) {
                                RedButton(title: .uploadPhotos)
                            }
                        }
                        .padding()
                    }
                })

            }

        }
    }
}

#Preview {
    UploadPhotosView()
}
