//
//  ViewModel.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import Foundation
import PhotosUI
import SwiftUI

//главная ViewModel, которая содержит все данные, которые изначально загружены в приложение
final class ViewModel {

    let aiStoreUnits: [CreateMyPetModel] // данные для AIStoreView
    let conceptUnits: [ConceptModel] // данные для GalleryExploreView - AlbumView

    let myInfoRows: [MyInfoRowModel] // данные для MyInfoView
    
    let examplePhotos1: [UIImage] // данные для BeforeYouStartView
    let examplePhotos2: [UIImage] // данные для BeforeYouStartView

    let badExamples: [PhotoExampleModel] // данные для ExamplePhotosView
    let goodExanples: [PhotoExampleModel] // данные для ExamplePhotosView

    init() {
        self.aiStoreUnits = [
            CreateMyPetModel(image: "CartoonCharacters", name: "Cartoon Characters"),
            CreateMyPetModel(image: "What’sYourDream?", name: "What’s Your Dream?"),
            CreateMyPetModel(image: "LookbookConcept", name: "Lookbook concept"),
            CreateMyPetModel(image: "ColorPopConcept", name: "Color pop concept")
        ]
        
        self.conceptUnits = [
            ConceptModel(image: "Concept1", name: "Teddy", text: "What’s Your Dream?", counter: 929),
            ConceptModel(image: "Concept2", name: "Teddy", text: "What’s Your Dream?", counter: 929),
            ConceptModel(image: "Concept3", name: "Teddy", text: "What’s Your Dream?", counter: 929)
        ]

        self.myInfoRows = [
            MyInfoRowModel(image: "PointShop", text: "Point shop", amount: 0),
            MyInfoRowModel(image: "UsageHistory", text: "Usage history", amount: nil),
            MyInfoRowModel(image: "FAQ", text: "FAQ", amount: nil),
            MyInfoRowModel(image: "ContactUs", text: "Contact Us", amount: nil),
            MyInfoRowModel(image: "TermsOfUse", text: "Terms of Use", amount: nil),
            MyInfoRowModel(image: "PrivacyPolicy", text: "Privacy Policy", amount: nil)
        ]

        self.examplePhotos1 = [UIImage(imageLiteralResourceName: "ResultExample1"), UIImage(imageLiteralResourceName: "ResultExample2"), UIImage(imageLiteralResourceName: "ResultExample3"), UIImage(imageLiteralResourceName: "ResultExample4")]
        self.examplePhotos2 = [UIImage(imageLiteralResourceName: "ResultExample5"), UIImage(imageLiteralResourceName: "ResultExample6"), UIImage(imageLiteralResourceName: "ResultExample7"), UIImage(imageLiteralResourceName: "ResultExample8")]

        self.badExamples = [
            PhotoExampleModel(image: "Humans in the photo", text: "Humans in the photo", isAppropriate: false),
            PhotoExampleModel(image: "Covered  face / body", text: "Covered  face / body", isAppropriate: false),
            PhotoExampleModel(image: "More than one pet", text: "More than one pet", isAppropriate: false),
            PhotoExampleModel(image: "Too far away", text: "Too far away", isAppropriate: false),
        ]
        
        self.goodExanples = [
            PhotoExampleModel(image: "Close-up front shots", text: "Close-up front shots", isAppropriate: true),
            PhotoExampleModel(image: "Clear full-body shots", text: "Clear full-body shots", isAppropriate: false),
            PhotoExampleModel(image: "Frame 41950", text: "Same and only pet", isAppropriate: false),
            PhotoExampleModel(image: "From various angles", text: "From various angles", isAppropriate: true),
        ]
        
  
    }
}
