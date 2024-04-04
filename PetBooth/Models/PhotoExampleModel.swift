//
//  PhotoExamoleModel.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 28.03.2024.
//

import Foundation

// Модель данных для ExamplePhotosView
class PhotoExampleModel: Identifiable {
    let id = UUID().uuidString
    let image: String
    let text: String
    let isAppropriate: Bool

    init(image: String, text: String, isAppropriate: Bool) {
        self.image = image
        self.text = text
        self.isAppropriate = isAppropriate
    }
}
