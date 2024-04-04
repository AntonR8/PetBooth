//
//  PhotoGrid.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI

struct ExamplePhotoGrid: View {
    let myColumns = [
        GridItem(),
        GridItem()
    ]
    let photos: [PhotoExampleModel]

    var body: some View {
        LazyVGrid (columns: myColumns) {
            ForEach(photos) {photo in
                VStack(alignment: .leading) {
                    Image(photo.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .overlay(alignment: .topLeading, content: {
                            if photo.isAppropriate {
                                Image(systemName: "checkmark")
                                    .padding(3)
                                    .foregroundStyle(.white)
                                    .background(
                                        Circle()
                                            .fill(.green)
                                    )
                                    .padding(10)
                            }
                        })
                    Text(photo.text)
                        .font(.caption)
                }.padding(4)
            }
        }
    }
}

#Preview {
    ExamplePhotoGrid(photos: ViewModel().badExamples)
}
