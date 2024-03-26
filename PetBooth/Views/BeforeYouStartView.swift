//
//  BeforeYouStartView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

struct BeforeYouStartView: View {
    var uploadedPhotosViewModel: UploadedPhotosViewModel
    let myColumns = [
    GridItem(),
    GridItem()
    ]
    let vm = ViewModel()
    var body: some View {
        NavigationStack {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {

//MARK: - Text 1
                VStack(alignment: .leading) {
                    Text("Discover the magical AI-generated pictures of your beloved dog / cat")
                        .bold()
//MARK: - Text 2
                    Text("Create a AI picture of your furry friend, using a few photos you’ve taken in the past.")
                        .foregroundStyle(.secondary)
                        .padding(.vertical, 6)
                }.padding()
//MARK: - LazyVGrid
                LazyVGrid (columns: myColumns) {
                    ForEach(vm.examplePhotos1, id: \.self) {photo in
                        Image(photo)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .padding(4)
                    }
                }.padding(.horizontal)
//MARK: - Text 3
                VStack(alignment: .leading) {
                    Text("Discover the magical AI-generated pictures of your beloved dog / cat")
                        .bold()
                        .padding()
//MARK: - Text 4
                    Text("Create a AI picture of your furry friend, using a few photos you’ve taken in the past.")
                        .foregroundStyle(.secondary)
                        .padding(.horizontal)
                }
//MARK: - LazyVGrid
                LazyVGrid (columns: myColumns) {
                    ForEach(vm.examplePhotos2, id: \.self) {photo in
                        Image(photo)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .padding(4)
                    }
                }.padding()
//MARK: - Button
                NavigationLink(destination: WhatIsYourNameView()) {
                    Text("Continue")
                        .frame(maxWidth: .infinity)
                        .frame(height: (UIScreen.main.bounds.width-32)/6)
                }
                .buttonStyle(.borderedProminent)
                .tint(.myRed)
                .padding(.horizontal)
            }) //END: ScrollView
            .navigationTitle("Before you start")
        }
    }
}

#Preview {
    BeforeYouStartView(uploadedPhotosViewModel: UploadedPhotosViewModel())
}
