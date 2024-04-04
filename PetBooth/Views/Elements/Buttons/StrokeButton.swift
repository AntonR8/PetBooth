//
//  StrokeButton.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 02.04.2024.
//

import SwiftUI

struct StrokeButton: View {
    let title: ButtonTitle
    let color = Color.myRed

    var body: some View {
        Text(title.rawValue)
            .frame(maxWidth: .infinity)
            .frame(height: title == .createAIimagesWithThisConcept ? (UIScreen.main.bounds.width)/9.28 : (UIScreen.main.bounds.width)/6.72) // учитываем единственную кнопку в ConceptView, имеющую меньшую высоту
            .foregroundColor(title == .createAIimagesWithThisConcept ? .myRed : .accent)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(title == .createAIimagesWithThisConcept ? .myRed : .accent)
            )
    }
}

#Preview {
    StrokeButton(title: .createAIimagesWithThisConcept)
}
