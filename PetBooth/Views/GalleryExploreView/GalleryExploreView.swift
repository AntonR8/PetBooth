//
//  GalleryExploreView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI
import SwiftData

struct GalleryExploreView: View {
    let vm = ViewModel()
    @State var selection = 2
    
    var body: some View {
            ZStack {
                switch selection {
                case 1: AddImagesView()
                case 2: ExploreView(selection: $selection)
                default: EmptyView()
                }
                VStack {
                    PickerView(selection: $selection)
                    Spacer()
            }
        }
            .navigationBarHidden(true)
    }
}

#Preview {
    GalleryExploreView()
}

