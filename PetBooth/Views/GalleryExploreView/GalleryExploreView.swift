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
    var color: UIColor = .red

    
    var body: some View {
        NavigationView {
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
        }
    }
}

#Preview {
    GalleryExploreView()
}

