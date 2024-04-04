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
        // background with Photo:
        Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(
                RoundedRectangle(cornerRadius: 25.0)
            )
            .overlay {
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(LinearGradient(colors: [.clear, .clear, .clear, .black], startPoint: .top, endPoint: .bottom))

                    // content:
                    VStack(alignment: .leading) {
                        Spacer()
                        Text(imageText)
                            .bold()
                            .foregroundStyle(.white)
                            .font(.title2)
                            .padding(.horizontal)
                        Text("60 AI profile photos • For dogs and cats")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .padding(.horizontal)
                            .multilineTextAlignment(.center)
                        NavigationLink(destination: MainTabView(selected: 2, uploadedPhotosViewModel: UploadedPhotosViewModel())) {
                            WhiteButton(title: .createWithMyPet)
                        }

                    }
                }
            }
    }
}

#Preview {
    CreateMyPetView(imageName: "CartoonCharacters", imageText: "Lookbook concept")
}
