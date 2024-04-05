//
//  SmallRectangle.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 02.04.2024.
//

import SwiftUI

struct ColorChooseRectangle: View {
    @Binding var chosenColor: ChosenColors?
    var text: String
    var comment: String?
    var image: String
    var body: some View {
        RoundedRectangle(cornerRadius: 15.0)
            .stroke(lineWidth: 1)
            .frame(height: comment == nil ? UIScreen.main.bounds.width/3.9 : UIScreen.main.bounds.width/3)
            .padding(4)
            .overlay {
                HStack {
                    VStack(alignment: .leading) {
                        Text(text)
                        if let comment {
                            Text(comment)
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                                .padding(.vertical, 1)
                        }
                        Image(image)
                            .resizable()
                            .scaledToFit()
                    }
                    .padding(25)
                    Spacer()
                }
            }
    }
}

#Preview {
    VStack {
        HStack {
            ColorChooseRectangle(chosenColor: .constant(ChosenColors.white), text: "Pure White", image: "WhitePetColor")
            ColorChooseRectangle(chosenColor: .constant(ChosenColors.white), text: "Pure Black", image: "BlackPetColor")
        }
        ColorChooseRectangle(chosenColor: .constant(ChosenColors.white), text: "Pure White", comment: "Including black and white pattern", image: "OtherPetColor")
    }.padding()
}
