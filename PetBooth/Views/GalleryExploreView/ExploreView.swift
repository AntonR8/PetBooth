//
//  ExploreView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI

struct ExploreView: View {
    @Binding var selection: Int
    var body: some View {
                ScrollView(showsIndicators: false) {
                    Spacer(minLength: 70)
                    ForEach(ViewModel().conceptUnits) {unit in
                        ConceptView(image: unit.image, name: unit.name, text: unit.text, counter: unit.counter, selection: $selection)
            }
        }
    }
}

#Preview {
    ExploreView(selection: .constant(1))
}
