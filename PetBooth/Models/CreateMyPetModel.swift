//
//  AIStoreModel.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import Foundation

// Модель данных для CreateMyPetVIew
class CreateMyPetModel: Identifiable {
    let id = UUID().uuidString
    let image: String
    let name: String

    init(image: String, name: String) {
        self.image = image
        self.name = name
    }

}
