//
//  UploadPhotosView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI
import PhotosUI

struct ExamplePhotosView: View {
        let myColumns = [
        GridItem(),
        GridItem()
        ]
    @Binding var selectedItems: [PhotosPickerItem]
var vm = ViewModel()

        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width+100, height: 6)
                        .foregroundStyle(LinearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
                    Spacer()
                } .frame(width: UIScreen.main.bounds.width, height: 6)
                ScrollView(showsIndicators: false) {


                        HStack {
                            Text("Upload photos")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                        }
    //MARK: - Text 1
                    HStack {
                    Text("Better photo, Better result! Check our guide for a paw-fect pic!")
                            .foregroundStyle(.secondary)
                            .padding(.vertical, 6)
                        Spacer()
                    }
    //MARK: - Text 2
                    HStack {
                    Text("Might result in")
                        .bold()
                      +  Text(" less likeness")
                            .bold()
                            .foregroundStyle(.red)
                    Spacer()
                }
    //MARK: - LazyVGrid 1
                    LazyVGrid (columns: myColumns) {
                        ForEach(vm.badExamples) {photo in
                            VStack(alignment: .leading) {
                                Image(photo.image)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                Text(photo.text)
                                    .font(.caption)

                            }.padding(4)
                        }
                    }
    //MARK: - Text 3
                    Text("").padding()
                    HStack {
                        Text("Good for ")
                            .bold()
                        + Text("top-notch results")
                            .bold()
                            .foregroundStyle(.green)
                        Spacer()
                    }
            
    //MARK: - LazyVGrid 2
                    LazyVGrid (columns: myColumns) {
                        ForEach(vm.goodExanples) {photo in
                            VStack(alignment: .leading) {
                                Image(photo.image)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .overlay(alignment: .topLeading, content: {
                                        if photo.isAppropriate {
                                            Image(systemName: "checkmark")
                                                .padding(3)
                                                .foregroundStyle(.white)
                                                .background(
                                                    Circle()
                                                        .fill(.green)
                                                )
                                                .padding(10)
                                        }
                                    })
                                Text(photo.text)
                                    .font(.caption)

                            }.padding(4)
                        }
                    }
    //MARK: - Button
                    PhotosPicker(
                        selection: $selectedItems,
                        matching: .images
                    ) {
                        Text("Add photo")
                            .frame(maxWidth: .infinity)
                            .frame(height: (UIScreen.main.bounds.width-32)/6)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    .padding(.vertical)



                }.padding()
                } //END: VStack
//
            
        }
    }


//MARK: - Preview
//#Preview {
//    ExamplePhotosView(selectedItems: ViewModel().selectedItems)
//        .environment(ViewModel())
//}

