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

            VStack {
                ProgressAndTitle(progress: 2/3, title: "Please tell us your pet’s color")

                Text("This helps our AI learn more efficiently!")
                    .foregroundColor(.secondary)
                    .padding(.vertical, 6)
                    .frame(maxWidth: .infinity, alignment: .leading)

                VStack {
                    HStack {
                        ColorChooseRectangle(text: "Pure White", image: "WhitePetColor")
                            .foregroundColor(chosenColor == .white ? .red : .secondary)
                            .onTapGesture {
                                chosenColor = .white
                            }
                        ColorChooseRectangle(text: "Pure Black", image: "BlackPetColor")
                            .foregroundColor(chosenColor == .black ? .red : .secondary)
                            .onTapGesture {
                                chosenColor = .black
                            }
                    }
                    ColorChooseRectangle(text: "Other colors or patterns", comment: "Including black and white pattern", image: "OtherPetColor")
                        .foregroundColor(chosenColor == .other ? .red : .secondary)
                        .onTapGesture {
                            chosenColor = .other
                        }
                }
                .padding(.vertical, 30)

                Spacer()

                if #available(iOS 16.0, *) {
                    NavigationLink(destination: UploadPhotosViewiOS16()) {
                        RedButton(title: .continueTitle, color: chosenColor == nil ? .gray : .myRed)
                    }
                    .disabled(chosenColor == nil)
                } else {
                    // Fallback on earlier versions
                    NavigationLink(destination: UploadPhotosViewiOS15()) {
                        RedButton(title: .continueTitle, color: chosenColor == nil ? .gray : .myRed)
                    }
                    .disabled(chosenColor == nil)
                }


            }
            .navigationBarHidden(true)
            .padding()

    }
}

#Preview {
    WhatIsYourPetsColorVIew(chosenColor: nil)
}
