//
//  MyInfoRowModel.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import Foundation

class MyInfoRowModel: Identifiable {
    
    let id = UUID().uuidString
    let image: String
    let text: String
    let amount: Int?

    init(image: String, text: String, amount: Int?) {
        self.image = image
        self.text = text
        self.amount = amount
    }
}
