//
//  WhatIsYourPetsColorVIew.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

enum ChosenColors {
    case white, black, other
}

struct WhatIsYourPetsColorVIew: View {
    @State var chosenColor: ChosenColors?
    var body: some View {
        NavigationView {
            VStack {
                ProgressAndTitle(progress: 2/3, title: "Please tell us your pet’s color")

                Text("This helps our AI learn more efficiently!")
                    .foregroundStyle(.secondary)
                    .padding(.vertical, 6)
                    .frame(maxWidth: .infinity, alignment: .leading)

                VStack {
                    HStack {
                        ColorChooseRectangle(chosenColor: $chosenColor, text: "Pure White", image: "WhitePetColor")
                            .foregroundStyle(chosenColor == .white ? .red : .secondary)
                            .onTapGesture {
                                chosenColor = .white
                            }
                        ColorChooseRectangle(chosenColor: $chosenColor, text: "Pure Black", image: "BlackPetColor")
                            .foregroundStyle(chosenColor == .black ? .red : .secondary)
                            .onTapGesture {
                                chosenColor = .black
                            }
                    }
                    ColorChooseRectangle(chosenColor: $chosenColor, text: "Other colors or patterns", comment: "Including black and white pattern", image: "OtherPetColor")
                        .foregroundStyle(chosenColor == .other ? .red : .secondary)
                        .onTapGesture {
                            chosenColor = .other
                        }
                }
                .padding(.vertical, 30)

                Spacer()

                NavigationLink(destination: UploadPhotosView()) {
                    RedButton(title: .continueTitle, color: chosenColor == nil ? .gray : .myRed)
                }
                .disabled(chosenColor == nil)


            }
            .padding()
        }
    }
}

#Preview {
    WhatIsYourPetsColorVIew(chosenColor: nil)
}
