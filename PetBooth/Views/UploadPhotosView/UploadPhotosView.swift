//
//  UploadPhotosView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 28.03.2024.
//

import SwiftUI
import PhotosUI


@available(iOS 16.0, *)
struct UploadPhotosViewiOS16: View {
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
                    case true: ExamplePhotosView()
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
                    }
                    HStack{
                        if #available(iOS 16.0, *) {
                            PhotosPicker(
                                selection: $uploadedPhotosViewModel.selectedItems,
                                matching: .images
                            ) {
                                switch uploadedPhotosViewModel.uploadedImages.isEmpty {
                                case true: RedButton(title: .addPhoto)
                                case false: StrokeButton(title: .addPhoto)
                                }
                            }
                        } else {
                            // Заглушка
                            switch uploadedPhotosViewModel.uploadedImages.isEmpty {
                            case true: RedButton(title: .addPhoto)
                            case false: StrokeButton(title: .addPhoto)
                            }
                        }
                        if !uploadedPhotosViewModel.uploadedImages.isEmpty {
                            NavigationLink(destination: CreateAlbumView()) {
                                RedButton(title: .uploadPhotos)
                            }
                        }
                    }
                        .padding()
                })
            }
        }
    }
}

// Заглушка
struct UploadPhotosViewiOS15: View {
    var vm = ViewModel()
    let myColumns = [
        GridItem(),
        GridItem()
    ]

    var body: some View {
        NavigationView {
            ZStack{
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                    ProgressAndTitle(progress: 1, title: "Upload photos")
                    ExamplePhotosView()
                    RedButton(title: .addPhoto)
                    .padding()
                })
            }
        }
    }
}

#Preview {
    if #available(iOS 16.0, *) {
        UploadPhotosViewiOS16()
    } else {
        // Fallback on earlier versions
        UploadPhotosViewiOS15()
    }
}
