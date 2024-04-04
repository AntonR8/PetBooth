//
//  BeforeYouStartView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

struct BeforeYouStartView: View {
    let myColumns = [
    GridItem(),
    GridItem()
    ]
    let vm = ViewModel()
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                VStack(alignment: .leading) {
                    Text("Discover the magical AI-generated pictures of your beloved dog / cat")
                        .bold()
                    Text("Create a AI picture of your furry friend, using a few photos you’ve taken in the past.")
                        .foregroundStyle(.secondary)
                        .padding(.vertical, 6)
                }

               PhotoGrid(images: vm.examplePhotos1)

                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        Image(systemName: "exclamationmark.triangle.fill")
                            .foregroundColor(.myRed)
                        Text("AI may generate output images with inaccuracies or defects, as shown below.")
                            .bold()
                    }
                    .padding(.vertical)

                    Text("Our AI is constantly learning, which means some of its results may not be perfect. We appreciate your understanding of possible imperfections, and by continuing, you agree to accept the results.")
                        .foregroundStyle(.secondary)
                       
                }

                PhotoGrid(images: vm.examplePhotos1)
                    .padding(.vertical)

                NavigationLink(destination: WhatIsYourNameView()) {
                    RedButton(title: .continueTitle)
                        .padding(.vertical)
                }

            })
            .navigationTitle("Before you start")
            .padding()
        }
    }
}

#Preview {
    BeforeYouStartView()
}
