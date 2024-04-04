//
//  File.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 31.03.2024.
//

import Foundation
import PhotosUI
import SwiftUI


// ViewModel для данных, загружемых пользователем

class UploadedPhotosViewModel: ObservableObject {
    @Published var petsName: String = "" // имя питомца
    @Published var uploadedImages: [UIImage] = [] // загруженные изображения
    @Published var selectedItems: [PhotosPickerItem] = [] { // изображения, отмеченные для загрузки
        didSet {
            Task{
                var array: [UIImage] = []
                for item in selectedItems {
                    do {
                        let data = try await item.loadTransferable (type: Data.self)
                        
                        guard let data, let uiImage = UIImage (data:data) else {
                            throw URLError(.badServerResponse)
                        }
                        
                        array.append(uiImage)
                        uploadedImages = array
                    }   catch {
                        print("")
                    }
                }
            }
        }
    }
}

