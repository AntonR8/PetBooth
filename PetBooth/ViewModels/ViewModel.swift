//
//  ViewModel.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import Foundation
import Observation
import PhotosUI
import SwiftUI

@Observable
class ViewModel {
    
    let aiStoreUnits: [CreateMyPetModel]
    let conceptUnits: [ConceptModel]
  
    
    var myInfoRows: [MyInfoRowModel]
    let examplePhotos1: [String] = ["image 17", "image 18", "image 19", "image 20"]
    let examplePhotos2: [String] = ["dog-dachshund-astronaut-in-the-city 1", "dog-in-the-city--water 1", "image 30", "image 31"]
    let badExamples: [PhotoExampleModel]
    let goodExanples: [PhotoExampleModel]
    
    init() {
        self.aiStoreUnits = [
            CreateMyPetModel(image: "image 12-3", name: "Cartoon Characters"),
            CreateMyPetModel(image: "image 12", name: "What’s Your Dream?"),
            CreateMyPetModel(image: "image 10", name: "Lookbook concept"),
            CreateMyPetModel(image: "image 12-2", name: "Color pop concept")
        ]
        
        self.conceptUnits = [
            ConceptModel(image: "image 15", name: "Teddy", text: "What’s Your Dream?", counter: 929),
            ConceptModel(image: "image 16", name: "Teddy", text: "What’s Your Dream?", counter: 929),
            ConceptModel(image: "image 2", name: "Teddy", text: "What’s Your Dream?", counter: 929)
        ]
        
         
        self.myInfoRows = [
            MyInfoRowModel(image: "Frame 41943", text: "Point shop", amount: 0),
            MyInfoRowModel(image: "Frame 41943-3", text: "Usage history", amount: nil),
            MyInfoRowModel(image: "Frame 41943-4", text: "FAQ", amount: nil),
            MyInfoRowModel(image: "Frame 41943-5", text: "Contact Us", amount: nil),
            MyInfoRowModel(image: "Frame 41943-6", text: "Terms of Use", amount: nil),
            MyInfoRowModel(image: "Frame 41943-7", text: "Privacy Policy", amount: nil)
        ]
        
        self.badExamples = [
            PhotoExampleModel(image: "image 21", text: "Humans in the photo", isAppropriate: false),
            PhotoExampleModel(image: "image 22", text: "Covered  face / body", isAppropriate: false),
            PhotoExampleModel(image: "image 23", text: "More than one pet", isAppropriate: false),
            PhotoExampleModel(image: "image 24", text: "Too far away", isAppropriate: false),
        ]
        
        self.goodExanples = [
            PhotoExampleModel(image: "image 26", text: "Close-up front shots", isAppropriate: true),
            PhotoExampleModel(image: "image 27", text: "Clear full-body shots", isAppropriate: false),
            PhotoExampleModel(image: "Frame 41950", text: "Same and only pet", isAppropriate: false),
            PhotoExampleModel(image: "image 25", text: "From various angles", isAppropriate: true),
        ]
        
  
    }
}
