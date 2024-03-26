//
//  UploadPhotosView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 28.03.2024.
//

import SwiftUI
import PhotosUI


struct UploadPhotosView: View {
    var vm = ViewModel()
    @State var uploadedPhotosViewModel = UploadedPhotosViewModel()
    let myColumns = [
        GridItem(),
        GridItem()
    ]
    @State var buttonIsVisible = true

    var body: some View {
        NavigationStack {
            ZStack{
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                    if !uploadedPhotosViewModel.uploadedImages.isEmpty {
                    HStack {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width+100, height: 6)
                            .foregroundStyle(LinearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
                        Spacer()
                    } .frame(width: UIScreen.main.bounds.width, height: 6)
                    
                        HStack {
                            Text("Upload photos")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                        }.padding(.horizontal)
                    }
                    //MARK: - Text 0
                    if !uploadedPhotosViewModel.uploadedImages.isEmpty {
                        HStack {
                            Text("Please select 10-12 photos")
                                .foregroundStyle(.secondary)
                            Spacer()
                        }.padding()
                    }
                    //MARK: - Text 1
                    if !uploadedPhotosViewModel.uploadedImages.isEmpty {
                        HStack {
                            Text("This photo cannot be used. Please choose another photo.")
                            Spacer()
                        }.padding(.horizontal)
                    }
                    //MARK: - Grid 1
                    LazyVGrid (columns: myColumns) {
                        ForEach(uploadedPhotosViewModel.uploadedImages, id: \.self) {image in
                                Image (uiImage: image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width/2.3, height: UIScreen.main.bounds.width/2.3)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .opacity(0.5)
                                    .overlay(alignment: .bottomLeading, content: {
                                        Image(systemName: "xmark").font(.caption).bold()
                                                .padding(6)
                                                .foregroundStyle(.white)
                                                .background(
                                                    Circle()
                                                        .fill(.red)
                                                )
                                                .padding(10)
                                    })


                        }
                    }.padding()
                    //MARK: - Text 2
                    Text("").padding()
                if !uploadedPhotosViewModel.uploadedImages.isEmpty {
                    HStack {
                        Text("This photo is suitable for use.")
                        Spacer()
                    }.padding(.horizontal)
                }
                    //MARK: - Grid 2
                    LazyVGrid (columns: myColumns) {
                        ForEach(uploadedPhotosViewModel.uploadedImages, id: \.self) {image in
                                Image (uiImage: image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width/2.3, height: UIScreen.main.bounds.width/2.3)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                               
                                    .overlay(alignment: .bottomLeading, content: {
                                        Image(systemName: "checkmark")
                                                .padding(6)
                                                .foregroundStyle(.white)
                                                .background(
                                                    Circle()
                                                        .fill(.green)
                                                )
                                                .padding(10)
                                    })
                                    .overlay(alignment: .topTrailing, content: {
                                        Button(action: {}, label: {
                                            Image(systemName: "xmark").font(.caption).bold()
                                                .padding(6)
                                                .foregroundStyle(.white)
                                                .background(
                                                    Circle()
                                                        .fill(.black)
                                                )
                                                .padding(10)
                                        })

                                    })


                        }
                    }.padding()
                   
                    //MARK: - Buttons Add & Upload:
                    //MARK: - Button Add
                    if !uploadedPhotosViewModel.uploadedImages.isEmpty {
                        HStack{
                            PhotosPicker(
                                selection: $uploadedPhotosViewModel.selectedItems,
                                matching: .images
                            ) {
                                RoundedRectangle(cornerRadius: 10.0)
                                    .stroke(lineWidth: 1.0)
                                    .frame(height: 44)
                                    .overlay {
                                        Text("Add photo")
                                    }                  
                            }

                            
                           
                            
                       

                            //MARK: - Button Upload
                            NavigationLink(destination: CreateAlbumView(uploadedPhotosViewModel: uploadedPhotosViewModel)) {
                                Text("Upload photos")
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 30)
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.myRed)
                            .padding(4)

                        }
                        //MARK: - Buttons Add & Upload parameters
                        .padding()
                        .onAppear(perform: {
                            buttonIsVisible = false
                        })
                        .onDisappear(perform: {
                            buttonIsVisible = true
                        })
                    }

                }) // END: ScrollView
                    //MARK: - Button:
                VStack {
                    Spacer()
                    if buttonIsVisible {
                        if !uploadedPhotosViewModel.uploadedImages.isEmpty {
                            PhotosPicker(
                                selection: $uploadedPhotosViewModel.selectedItems,
                                matching: .images
                            ) {
                                Text("Add photo")
                                    .frame(maxWidth: .infinity)
                                    .frame(height: (UIScreen.main.bounds.width-32)/6)
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.red)
                            .padding()
                        }
                    }
                }
                //MARK: - ExamlpePhotosView:
                if uploadedPhotosViewModel.uploadedImages.isEmpty {
                    withAnimation(.spring) {
                        ExamplePhotosView(selectedItems: $uploadedPhotosViewModel.selectedItems)

                    }
                    .transition(.opacity)

                }
            }
            //MARK: - END: ZStack
        }// END: NAvigationStack
    }
}

#Preview {
    UploadPhotosView()
}
