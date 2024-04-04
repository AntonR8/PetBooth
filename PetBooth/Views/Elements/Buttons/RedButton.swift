//
//  RedNavigationLinkButton.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 02.04.2024.
//

import SwiftUI

struct RedButton: View {
    let title: ButtonTitle
    let color: Color

    init(title: ButtonTitle, color: Color = Color.myRed) {
        self.title = title
        self.color = color
    }

    var body: some View {
        Text(title.rawValue)
            .frame(maxWidth: .infinity)
            .frame(height: (UIScreen.main.bounds.width)/6.72)
            .background(color)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    RedButton(title: .addPhoto)
}
