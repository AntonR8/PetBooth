//
//  PhotoModel.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 31.03.2024.
//

import Foundation

class PhotoModel: Identifiable {
    var id = UUID().uuidString
    var images: [String]
    var name: String
    var text: Bool

    init(id: String = UUID().uuidString, images: [String], name: String, text: Bool) {
        self.id = id
        self.images = images
        self.name = name
        self.text = text
    }
}
