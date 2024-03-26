//
//  CreateAlbumView.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 30.03.2024.
//

import SwiftUI

struct CreateAlbumView: View {
    var uploadedPhotosViewModel: UploadedPhotosViewModel
    var body: some View {
        NavigationStack {
               VStack {
                    // MARK: - Progress Line
                    HStack {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width+100, height: 6)
                            .foregroundStyle(LinearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
                        Spacer()
                    } .frame(width: UIScreen.main.bounds.width, height: 6)
                    
                    // MARK: - Title
                    HStack {
                        Text("Create Album")
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                    }.padding(.horizontal)
                    
                    // MARK: - Price
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(lineWidth: 2)
                        .foregroundStyle(.myRed)
                        .frame(height: 124)
                        .padding()
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
                                    Text("1,550₽   ")
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
                                    Text("1,550₽")
                                        .bold()
                                }.padding(.horizontal)
                            }.padding()
                        }
                    // MARK: - Text
                    HStack {
                        Text("“Part of your payment helps rescued animal adoption.”")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        Spacer()
                    }
                    .padding()
                    
                    // MARK: - Links List
               
                   RowView(image: "Frame 41943", text: "Product Information", amount: nil)
                       .overlay {
                           HStack {
                               Spacer()
                               Button(action: {
                                   
                               }, label: {
                                   Image(systemName: "chevron.down")
                                       .foregroundStyle(.gray)
                               })
                           }
                       }
                       .padding()
                       .background(Color.gray.opacity(0.3))
                       .clipShape(RoundedRectangle(cornerRadius: 10.0))
                       .padding(.horizontal)
                        
                   RowView(image: "Frame 41943-2", text: "Refund Information", amount: nil)
                       .overlay {
                           HStack {
                               Spacer()
                               Button(action: {
                                   
                               }, label: {
                                   Image(systemName: "chevron.down")
                                       .foregroundStyle(.gray)
                               })
                           }
                       }
                       .padding()
                       .background(Color.gray.opacity(0.3))
                       .clipShape(RoundedRectangle(cornerRadius: 10.0))
                       .padding(.horizontal)

                    
                    // MARK: - Terms of Use
                   HStack {
                       Link(destination: URL(string: "http://antonr8.tilda.ws/appstoreconnectsupport")!, label: {
                           Text("Terms of Use")
                       })
                       Text("|")
                       Link(destination: URL(string: "http://antonr8.tilda.ws/appstoreconnectsupport")!, label: {
                           Text("Privacy Policy")
                       })
                   }
                   .padding()
                   .foregroundStyle(.secondary)
                   .font(.caption)
                    // MARK: - Button
                 Spacer()
                   NavigationLink(destination: MainTabView(selected: 2, albumSelected: 1, uploadedPhotosViewModel: uploadedPhotosViewModel)) {
                       Text("Upload photos")
                           .frame(maxWidth: .infinity)
                           .frame(height: 30)
                   }
                   .buttonStyle(.borderedProminent)
                   .tint(.myRed)
                   .padding(4)

                    
                } //END: VStack
        
        }
    }
}

#Preview {
    CreateAlbumView(uploadedPhotosViewModel: UploadedPhotosViewModel())
}
