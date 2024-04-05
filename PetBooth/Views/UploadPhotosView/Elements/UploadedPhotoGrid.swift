//
//  UploadedPhotoGrid.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI

struct UploadedPhotoGrid: View {
    let myColumns = [
        GridItem(),
        GridItem()
    ]
    let photos: [UIImage]
    let suitable: Bool

    var body: some View {
        LazyVGrid (columns: myColumns) {
            ForEach(photos, id: \.self) {image in
                VStack {
                    if suitable {
                        Button(action: {}, label: {
                            Image(systemName: "xmark").font(.caption)
                                .padding(7)
                                .foregroundColor(.white)
                                .background(
                                    Circle()
                                        .fill(.black)
                                )
                        })
                        .padding(10)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Spacer()
                    Image(systemName: suitable ? "checkmark" : "xmark").font(.caption)
                        .padding(6)
                        .foregroundColor(.white)
                        .background(
                            Circle()
                                .fill(suitable ? .green : .red)
                        )
                        .padding(10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width/2.3, height: UIScreen.main.bounds.width/2.3)
                .background(
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width/2.3, height: UIScreen.main.bounds.width/2.3)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .opacity(suitable ? 1 : 0.5)
                    
                )
            }.padding()
        }
    }
}

#Preview {
    UploadedPhotoGrid(photos: [UIImage(imageLiteralResourceName: "HorizontalTest"), UIImage(imageLiteralResourceName: "VerticalTest")], suitable: true)
}
