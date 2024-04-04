//
//  WhiteButton.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 02.04.2024.
//

import SwiftUI

struct WhiteButton: View {
    let title: ButtonTitle
    
    var body: some View {
        if #available(iOS 15.0, *) {
            Text(title.rawValue)
                .frame(maxWidth: .infinity)
                .frame(height: (UIScreen.main.bounds.width)/6.72)
                .background(.white)
                .foregroundColor(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    ZStack{
        Color.gray
        WhiteButton(title: .addPhoto)
    }
}
