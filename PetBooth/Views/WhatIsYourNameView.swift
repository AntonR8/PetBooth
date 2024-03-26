//
//  WhatIsYourNameView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

struct WhatIsYourNameView: View {
    @State private var text: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/3, height: 6)
                    .foregroundStyle(LinearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
                    Spacer()
                } .frame(width: UIScreen.main.bounds.width, height: 6)
                VStack(alignment: .leading) {
                    Text("What is your pet's name?")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                    TextField("Enter your pet’s name", text: $text)
                        .padding()
                    Divider().padding(.horizontal)

                }
                Spacer()
                NavigationLink(destination: WhatIsYourPetsColorVIew()) {
                    Text("Continue")
                        .frame(maxWidth: .infinity)
                        .frame(height: (UIScreen.main.bounds.width-32)/6)
                }
                .disabled(text.count < 2)
                .buttonStyle(.borderedProminent)
                .tint(text.count < 2 ? .gray : .myRed)
                .padding()
            }
        }
    }
}

#Preview {
    WhatIsYourNameView()
}
