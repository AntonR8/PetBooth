//
//  File.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 31.03.2024.
//

import Foundation
import Observation
import PhotosUI
import SwiftUI

@Observable
class UploadedPhotosViewModel {
    var petsName: String = ""
    var uploadedImages: [UIImage] = []
    var selectedItems: [PhotosPickerItem] = [] {
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
    
    func savePetsName(petsName: String) {
        self.petsName = petsName
    }
}

