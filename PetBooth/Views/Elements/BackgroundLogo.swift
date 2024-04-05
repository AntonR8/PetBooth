//
//  BackgroundLogo.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI

struct BackgroundLogo: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()

            VStack {
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fit) 
                Spacer()
            }.ignoresSafeArea()
            RoundedRectangle(cornerRadius: 25.0)
                .fill(LinearGradient(colors: [.clear,  .black], startPoint: .top, endPoint: .bottom))
        }
    }
}

#Preview {
    ZStack{
        BackgroundLogo()
    }
}
