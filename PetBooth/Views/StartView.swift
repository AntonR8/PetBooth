//
//  ContentView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI
import SwiftData

struct StartView: View {
    var body: some View {
        NavigationView {
            ZStack{
                // background
                BackgroundLogo()

                // content
                VStack{
                    Spacer()
                    Image("WhiteLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2)
                    Text("Pet AI Studio")
                        .bold()
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding()
                    Text("Explore a range of heartwarming AI dog images")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .frame(width: UIScreen.main.bounds.width/1.3)
                        .padding(.vertical)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: MainTabView()) {
                        RedButton(title: .continueTitle)
                            .padding()
                    }
                }
            }
        }
    }
}


#Preview {
    StartView()
}
