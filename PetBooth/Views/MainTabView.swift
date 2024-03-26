//
//  TabView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

struct MainTabView: View {
    @State var selected = 1
    var albumSelected: Int?
    var uploadedPhotosViewModel: UploadedPhotosViewModel
    var body: some View {
        TabView(selection: $selected) {

            //MARK: - 1
            AIStoreView()
            .tabItem {
            Image(systemName: "character.cursor.ibeam")
            Text("AI Store")
            }
            .tag(1)
            .accentColor(.black)

            //MARK: - 2

            GalleryExploreView(uploadedPhotosViewModel: uploadedPhotosViewModel, selection: albumSelected ?? 2)
            .tabItem {
            Image(systemName: "photo.artframe")
            Text("Gallery")
            }
            .tag(2)
            .accentColor(.black)

            //MARK: - 3

            MyInfoView()
            .tabItem {
            Image(systemName: "person")
            Text("My Info")
            }
            .tag(3)
            .accentColor(.black)

            //MARK: - END TabView
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    MainTabView(uploadedPhotosViewModel: UploadedPhotosViewModel())
}
