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
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    ProgressAndTitle(progress: 1, title: "Create Album")
                    
                    PriceRectangle(oldPrice: 1550, newPrice: 880)
                    
                    HStack {
                        Text("“Part of your payment helps rescued animal adoption.”")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                            .padding(.vertical)
                        Spacer()
                    }
                    
                    RowView(image: "FAQ", text: "Product Information", amount: nil)
                    RowView(image: "ContactUs", text: "Refund Information", amount: nil)
                    
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
                    
                    Spacer()
                    NavigationLink(destination: MainTabView(selected: 2, albumSelected: 1, uploadedPhotosViewModel: uploadedPhotosViewModel)) {
                        RedButton(title: .createAlbum)
                    }
                }
                .padding()
            }
        } else {
            // Fallback on earlier versions
            NavigationView {
                VStack {
                    ProgressAndTitle(progress: 1, title: "Create Album")

                    PriceRectangle(oldPrice: 1550, newPrice: 880)

                    HStack {
                        Text("“Part of your payment helps rescued animal adoption.”")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                            .padding(.vertical)
                        Spacer()
                    }

                    RowView(image: "FAQ", text: "Product Information", amount: nil)
                    RowView(image: "ContactUs", text: "Refund Information", amount: nil)

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

                    Spacer()
                    NavigationLink(destination: MainTabView(selected: 2, albumSelected: 1, uploadedPhotosViewModel: uploadedPhotosViewModel)) {
                        RedButton(title: .createAlbum)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    CreateAlbumView(uploadedPhotosViewModel: UploadedPhotosViewModel())
}
