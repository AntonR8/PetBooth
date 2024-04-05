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
                    VStack(alignment: .trailing) {
                        Image(systemName: photo.isAppropriate ? "checkmark" : "")
                            .padding(3)
                            .foregroundColor(.white)
                            .background(
                                Circle()
                                    .fill(photo.isAppropriate ? .green : .clear)
                            )
                            .padding(10)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        Spacer()
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*169/390, height: UIScreen.main.bounds.width*169/390)
                    .background(
                        Image(photo.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    )
                    Text(photo.text)
                        .font(.caption)
                }
            }
        }
    }
}

#Preview {
    ExamplePhotoGrid(photos: ViewModel().goodExanples)
}
