//
//  GalleryExploreView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI
import SwiftData

struct GalleryExploreView: View {

    var uploadedPhotosViewModel: UploadedPhotosViewModel
    let vm = ViewModel()
    
    @State var selection = 2 
    var color: UIColor = .red

    
    var body: some View {
        NavigationStack {
            ZStack {
                switch selection {
                case 1:
                    switch uploadedPhotosViewModel.uploadedImages.isEmpty {
                    case true: AddImagesView()
                    case false: AlbumCoverView(uploadedPhotosViewModel: uploadedPhotosViewModel)
                    }
                case 2: ExploreView(selection: $selection)
                default: EmptyView()
                }
                VStack {
                    PickerView(selection: $selection)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    GalleryExploreView(uploadedPhotosViewModel: UploadedPhotosViewModel())
}

