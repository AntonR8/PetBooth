//
//  WhatIsYourPetsColorVIew.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

enum ChosenColors {
    case white, black, other
}

struct WhatIsYourPetsColorVIew: View {
    @State var chosenColor: ChosenColors?
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/3*2, height: 6)
                        .foregroundStyle(LinearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
                    Spacer()
                } .frame(width: UIScreen.main.bounds.width, height: 6)
                //MARK: - Title
                HStack {
                    VStack(alignment: .leading) {
                        Text("Please tell us your pet’s color")
                            .font(.largeTitle)
                            .bold()
                        //MARK: - Text
                        Text("This helps our AI learn more efficiently!")
                            .foregroundStyle(.secondary)
                            .padding(.vertical, 6)
                    }
                    Spacer()
                }
//            .padding()
                //MARK: - Grid
                VStack {
                    HStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(chosenColor == .white ? .red : .secondary)
                            .frame(height: 100)
                            .padding(4)
                            .overlay {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("Pure White")
                                        Image("Frame 41966")
                                    }
                                    .padding(25)
                                    Spacer()
                                }
                            }
                            .onTapGesture {
                                chosenColor = .white
                            }
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(chosenColor == .black ? .red : .secondary)
                            .frame(height: 100)
                            .padding(4)
                            .overlay {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("Pure Black")
                                        Image("Frame 41966-2")
                                    }
                                    .padding(25)
                                    Spacer()
                                }
                            }
                            .onTapGesture {
                                chosenColor = .black
                            }
                    }
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(chosenColor == .other ? .red : .secondary)
                        .frame(height: 124)
                        .padding(4)
                        .overlay {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Other colors or patterns")
                                    Text("Including black and white pattern")
                                        .font(.footnote)
                                        .foregroundStyle(.secondary)
                                        .padding(.vertical, 2)
                                    Image("Frame 41966-3")
                                        .resizable()
                                        .scaledToFit()
                                        
                                }.frame(maxWidth: UIScreen.main.bounds.width - 32)
                                    .padding()
                                    .padding(.horizontal, 4)

                                Spacer()
                            }
                        }
                        .onTapGesture {
                            chosenColor = .other
                        }
                }
                .padding(.vertical, 30)


                //MARK: - Button
                Spacer()

                NavigationLink(destination: UploadPhotosView()) {
                    Text("Continue")
                        .frame(maxWidth: .infinity)
                        .frame(height: (UIScreen.main.bounds.width-32)/6)
                }
                .disabled(chosenColor == nil)
                .buttonStyle(.borderedProminent)
                .tint(chosenColor == nil ? .gray : .red)
                .padding(4)

                
            } //END: VStack
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    WhatIsYourPetsColorVIew(chosenColor: nil)
}
