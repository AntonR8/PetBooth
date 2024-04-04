//
//  PriceRectangle.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI

struct PriceRectangle: View {
    var oldPrice: Int
    var newPrice: Int
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .stroke(lineWidth: 2)
            .foregroundStyle(.myRed)
            .frame(height: 124)
            .overlay {
                VStack {
                    HStack {
                        Text("STANDART")
                            .bold()
                            .foregroundStyle(.myRed)
                        Spacer()
                        Image(systemName: "checkmark")
                            .padding(3)
                            .foregroundStyle(.white)
                            .background(
                                Circle()
                                    .fill(.myRed)
                            )

                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 20)

                    HStack {
                        Text("Including black and white pattern")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        Spacer()
                    }
                    .padding(.horizontal)

                    HStack {
                        Spacer()
                        Text("₽")
                            .foregroundStyle(.white)
                            .font(.caption)
                            .padding(4)
                            .background {
                                Circle()
                                    .fill(.gray)
                        }
                        Text("\(oldPrice)₽   ")
                            .font(.callout)
                            .strikethrough()
                            .foregroundStyle(.gray)
                        Text("₽")
                            .foregroundStyle(.white)
                            .font(.callout)
                            .padding(6)
                            .background {
                                Circle()
                                    .fill(.myRed)
                        }
                        Text("\(newPrice)₽")
                            .bold()
                    }.padding(.horizontal)
                }.padding()
            }.padding(.vertical)
    }
}

#Preview {
    PriceRectangle(oldPrice: 1550, newPrice: 880)
}
