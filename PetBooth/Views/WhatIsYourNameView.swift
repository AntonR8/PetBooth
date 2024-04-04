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
        NavigationView {
            VStack {
                ProgressAndTitle(progress: 1/3, title: "What is your pet's name?")
                VStack(alignment: .leading) {
                    TextField("Enter your pet’s name", text: $text)
                    Divider()
                    Spacer()
                    NavigationLink(destination: WhatIsYourPetsColorVIew()) {
                        RedButton(title: .continueTitle, color: text.count < 2 ? .gray : .myRed)
                    }
                    .disabled(text.count < 2)
                }
                .padding()
            }
        }
    }
}

#Preview {
    WhatIsYourNameView()
}
