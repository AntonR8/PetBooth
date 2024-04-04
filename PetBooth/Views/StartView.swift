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
        if #available(iOS 16.0, *) {
            NavigationStack {
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
                            RedButton(title: .continueTitle)
                                .padding()
                        }
                    }
                } // END: ZStack
            }
        } else {
            // Fallback on earlier versions
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
                            .foregroundStyle(.white)
                            .font(.title2)
                            .padding()
                        Text("Explore a range of heartwarming AI dog images")
                            .foregroundStyle(.gray)
                            .font(.subheadline)
                            .frame(width: UIScreen.main.bounds.width/1.3)
                            .padding(.vertical)
                            .multilineTextAlignment(.center)
                        NavigationLink(destination: MainTabView(uploadedPhotosViewModel: UploadedPhotosViewModel())) {
                            RedButton(title: .continueTitle)
                                .padding()
                        }
                    }
                } // END: ZStack
            }
        }
    }
}

#Preview {
    StartView()
}
