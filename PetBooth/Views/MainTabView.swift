//
//  TabView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

// переключение между вкладками tabView
struct MainTabView: View {
    @State var selected = 1
    var albumSelected: Int?

    var body: some View {
        TabView(selection: $selected) {

            //MARK: - вкладка 1
            AIStoreView()
                .tabItem {
                    Image(systemName: "character.cursor.ibeam")
                    Text("AI Store")
                }
                .tag(1)

            //MARK: - вкладка 2

            GalleryExploreView(selection: albumSelected ?? 2)
                .tabItem {
                    Image(systemName: "photo.artframe")
                    Text("Gallery")
                }
                .tag(2)

            //MARK: - вкладка 3

            MyInfoView()
                .tabItem {
                    Image(systemName: "person")
                    Text("My Info")
                }
                .tag(3)

            //MARK: - END TabView
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    MainTabView()
}
