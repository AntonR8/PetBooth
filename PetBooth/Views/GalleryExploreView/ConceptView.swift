//
//  ConceptView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI

struct ConceptView: View {
    let image: String
    let name: String
    let text: String
    var counter: Int
    @Binding var selection: Int

    var body: some View {
        VStack {

            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(
                    RoundedRectangle(cornerRadius: 25.0)
                )

            HStack {
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title2)
                        .bold()
                        .padding(.vertical, 6)

                    Text(text)
                        .font(.subheadline)
                        .padding(.vertical, -10)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Button(action: {}, label: {
                        Image(systemName: "heart")
                    })
                    .foregroundStyle(.black)
                    .padding(.vertical, 2)
                    Text(counter.description)
                        .font(.callout)

                }
            }

            Button(action: {
                selection = 1
            }, label: {
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 1.0)
                    .tint(.myRed)
                    .overlay {
                        Text("Create AI images with this concept")
                            .foregroundStyle(.myRed)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: (UIScreen.main.bounds.width)/9.28)
            })
            .padding(.vertical)


        }.padding(.horizontal) // END: VStack
    }
}

//#Preview {
//    ConceptView(image: "image 15", name: "Teddy", text: "What’s Your Dream?", counter: 929, selection: .constant(1))
//}
