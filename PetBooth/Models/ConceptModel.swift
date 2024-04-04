//
//  ConceptModel.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import Foundation

// Модель данных для ConceptView
class ConceptModel: Identifiable {
    let id = UUID().uuidString
    let image: String
    let name: String
    let text: String
    var counter: Int

    init(image: String, name: String, text: String, counter: Int) {
        self.image = image
        self.name = name
        self.text = text
        self.counter = counter
    }
}
