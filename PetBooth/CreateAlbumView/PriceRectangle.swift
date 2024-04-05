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
        ZStack{
            // background:
            RoundedRectangle(cornerRadius: 25.0)
                .stroke(lineWidth: 2)
                .foregroundColor(.myRed)
                .frame(height: 124)

            // content:
            VStack {
                HStack {
                    Text("STANDART")
                        .bold()
                        .foregroundColor(.myRed)
                    Spacer()
                    Image(systemName: "checkmark")
                        .padding(3)
                        .foregroundColor(.white)
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
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.horizontal)

                HStack {
                    Spacer()
                    ZStack {
                        /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/.fill(.myRed)
                            .frame(width: 16)
                        Text("₽")
                            .foregroundColor(.gray)
                            .font(.system(size: 11))
                    }
                    Text("\(1550)₽   ")
                        .font(.callout)
                        .strikethrough()
                        .foregroundColor(.gray)

                    ZStack {
                        /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/.fill(.myRed)
                            .frame(width: 20)
                        Text("₽")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }

                    Text("\(880)₽")
                        .bold()
                }.padding(.horizontal)
            }.padding()
        }.padding(.vertical)
    }
}

#Preview {
    PriceRectangle(oldPrice: 1550, newPrice: 880)
}
