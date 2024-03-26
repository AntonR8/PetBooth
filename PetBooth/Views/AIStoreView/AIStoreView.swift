//
//  SwiftUIView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI
import SwiftData

struct AIStoreView: View {
    let vm = ViewModel()
    var body: some View {
            ZStack {
                VStack {
                    HStack {
                        Image("Group 3")
                        Spacer()
                    }
                    .padding(.vertical, 25)
                    Spacer()
                }.padding(.horizontal, 22)
                ScrollView(showsIndicators: false) {
                    Spacer(minLength: 70)
                    ForEach(vm.aiStoreUnits) {unit in
                        CreateMyPetView(imageName: unit.image, imageText: unit.name)
                            .padding(.vertical, 5)
                    }
                }
                .padding(.horizontal)
            }
    }
}

#Preview {
    AIStoreView()
}
