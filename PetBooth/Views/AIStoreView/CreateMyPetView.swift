//
//  CreateMyPetView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI

struct CreateMyPetView: View {
    let imageName: String
    let imageText: String
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(
                    RoundedRectangle(cornerRadius: 25.0)
                )
            VStack(alignment: .leading) {
                Spacer()
                Text(imageText)
                    .bold()
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding(.horizontal)
                Text("60 AI profile photos • For dogs and cats")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                NavigationLink(destination:
                                MainTabView(selected: 2)) {
                    WhiteButton(title: .createWithMyPet) }
                Text("")
            }
        }
        .frame(height: UIScreen.main.bounds.width*310/350)
    }
}

#Preview {
    CreateMyPetView(imageName: "CartoonCharacters", imageText: "Lookbook concept")
}
