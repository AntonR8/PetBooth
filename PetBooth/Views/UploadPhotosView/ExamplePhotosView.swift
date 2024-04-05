//
//  UploadPhotosView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI
import PhotosUI

struct ExamplePhotosView: View {
    var vm = ViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {

            Text("Better photo, Better result! Check our guide for a paw-fect pic!")
                .foregroundColor(.secondary)
                .padding(.vertical, 6)

            Group {
                Text("Might result in").bold()
                +  Text(" less likeness").bold()
                    .foregroundColor(.red)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            ExamplePhotoGrid(photos: vm.badExamples)

            Text("").padding()
            Group {
                Text("Good for ").bold()
                + Text("top-notch results").bold()
                    .foregroundColor(.green)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            ExamplePhotoGrid(photos: vm.goodExanples)
            Text("")
                .frame(height: 50)
        }
        .padding()
    }
}


#Preview {
    ScrollView{
            ExamplePhotosView()
    }
}

