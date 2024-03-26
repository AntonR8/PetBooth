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
        NavigationStack {
            ZStack{
                //background
                Color.black.ignoresSafeArea()
                VStack {
                    Image("Frame 7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25.0)
                                .fill(LinearGradient(colors: [.clear,  .black], startPoint: .top, endPoint: .bottom))
                        }
                    Spacer()
                }.ignoresSafeArea()

                //MARK: - content START

                VStack{
                    Spacer()
                    Image("Group 2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2)
                    Text("Pet AI Studio")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .bold()
                        .padding()
                    Text("Explore a range of heartwarming AI dog images")
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                        .frame(width: UIScreen.main.bounds.width/1.3)
                        .padding(.vertical)
                        .multilineTextAlignment(.center)

                    NavigationLink(destination: MainTabView(uploadedPhotosViewModel: UploadedPhotosViewModel())) {
                        Text("Continue")
                            .frame(maxWidth: .infinity)
                            .frame(height: (UIScreen.main.bounds.width)/6.72)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.myRed)
                    .padding(.vertical, 30)
                    .padding(.horizontal)
                    }
                   
                //MARK: - content END

            } // END: ZStack
        }
    }
}

#Preview {
    StartView()
}
