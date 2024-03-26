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
        ZStack{
            //background

            Image(imageName)
                .resizable()
                .scaledToFit()
//                .frame(maxHeight: 310)
                .clipShape(
                    RoundedRectangle(cornerRadius: 25.0)
                )

            //MARK: - content START
                .overlay {

                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(LinearGradient(colors: [.clear, .clear, .clear, .black], startPoint: .top, endPoint: .bottom))
                        VStack(alignment: .leading) {
                            Spacer()
                            Text(imageText)
                                .foregroundStyle(.white)
                                .font(.title2)
                                .bold()
                                .padding(.horizontal, 16)
                            Text("60 AI profile photos • For dogs and cats")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 16)
                                .padding(.vertical, -10)
                                .multilineTextAlignment(.center)

                            NavigationLink(destination: MainTabView(selected: 2, uploadedPhotosViewModel: UploadedPhotosViewModel())) {
                                Text("Create with My Pet")
                                    .frame(maxWidth: .infinity)
                                    .frame(height: (UIScreen.main.bounds.width)/9.28)
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.white)
                            .foregroundStyle(.black)
                            .bold()
                            .padding()

                        }
                    }
                }
            //MARK: - content END

        } // END: ZStack
    }
}

#Preview {
    CreateMyPetView(imageName: "image 10", imageText: "Lookbook concept")
}
