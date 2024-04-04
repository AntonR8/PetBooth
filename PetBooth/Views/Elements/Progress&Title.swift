//
//  ProgressLine.swift
//  PetBooth
//
//  Created by АнтохаПрограммист on 02.04.2024.
//

import SwiftUI

struct ProgressAndTitle: View {
    var progress: CGFloat
    var title: String
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width*progress, height: 6)
                    .foregroundStyle(LinearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: 6)
            Text(title)
                .font(.largeTitle)
                .bold()
                .padding()
        }
    }
}

#Preview {
    ProgressAndTitle(progress: 1/3, title: "What is your pet's name?")
}
