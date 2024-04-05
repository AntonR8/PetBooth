//
//  CreateAlbumView.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 30.03.2024.
//

import SwiftUI

struct CreateAlbumView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ProgressAndTitle(progress: 1, title: "Create Album")

            Group {
                PriceRectangle(oldPrice: 1550, newPrice: 880)


                Text("“Part of your payment helps rescued animal adoption.”")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity, alignment: .leading)


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
            .foregroundColor(.secondary)
            .font(.caption)

                Spacer()
                NavigationLink(destination: GalleryExploreView(selection: 1)) {
                    RedButton(title: .createAlbum)
                }
            }
            .padding(.horizontal)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    CreateAlbumView()
}
