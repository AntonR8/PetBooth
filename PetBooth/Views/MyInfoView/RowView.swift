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
                    .foregroundStyle(.white)
                    .font(.callout)
                    .padding(6)
                    .background {
                        Circle()
                            .fill(.red)
                    }
                
                Text(amount.description)
            }
        }
        .padding(.vertical, 1)
        .padding(.horizontal, -6)
    }
}

#Preview {
    RowView(image: "Frame 41943", text: "Point shop", amount: 0)

}
