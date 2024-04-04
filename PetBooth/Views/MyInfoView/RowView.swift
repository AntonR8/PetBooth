//
//  RowView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

struct RowView: View {
    let image: String
    let text: String
    let amount: Int?
    var body: some View {
        HStack{
            Image(image)
            Text(text)
                .font(.callout)
            Spacer()
            if let amount {
                Text("₽")
                    .foregroundColor(.white)
                    .font(.callout)
                    .padding(6)
                    .background {
                        Circle()
                            .fill(.red)
                    }
                
                Text(amount.description)
            }
            Image(systemName: (text == "Product Information" || text == "Refund Information") ? "chevron.down" : "chevron.right")
                .foregroundColor(.secondary)
                .padding(.horizontal)
                .opacity(image == "emailLogo" ? 0 : 1)
        }
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor((text == "Product Information" || text == "Refund Information") ? .myInfoBackground :.myInfoRow)
        )
    }
}

#Preview {
    RowView(image: "Frame 41943", text: "Point shop", amount: 0)

}
