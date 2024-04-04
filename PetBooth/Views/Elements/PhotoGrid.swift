//
//  PhotoGrid.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 04.04.2024.
//

import SwiftUI

struct PhotoGrid: View {
    let myColumns = [
    GridItem(),
    GridItem()
    ]
    let images: [UIImage]

    var body: some View {
        LazyVGrid (columns: myColumns) {
            ForEach(images, id: \.self) {photo in
                Image(uiImage: photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width/2.3, height: UIScreen.main.bounds.width/2.3)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .padding(4)
            }
        }
    }
}

#Preview {
    PhotoGrid(images: [])
}
