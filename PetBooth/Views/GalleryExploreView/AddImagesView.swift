//
//  AddImagesView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI

struct AddImagesView: View {
    @AppStorage("email") var email = ""

    var body: some View {

        ZStack{
            VStack {
                Text(email.isEmpty ? "You need to sign in." : "Would you like to create AI images?")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)

                switch email.isEmpty {
                case true:
                    NavigationLink(destination: SignInView()) {
                        RedButton(title: .signIn)
                            .padding(31)
                    }
                case false:
                    NavigationLink(destination: BeforeYouStartView()) {
                        RedButton(title: .createAIimgaes)
                            .padding(31) 
                    }
                }
            }
        }
    }
}

#Preview {
    AddImagesView()
}
