//
//  GalleryExploreView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI
import SwiftData

struct GalleryExploreView: View {

    var uploadedPhotosViewModel: UploadedPhotosViewModel
    let vm = ViewModel()
    @AppStorage("email") var email = ""
    @State var selection = 2 // =2
    var color: UIColor = .red
    let myColumns = [
    GridItem(),
    GridItem()
    ]
    let petName: String = "Teddy"
    let text: String = "Cartoon Characters"
    
    var body: some View {
//        TabView(selection: $selection) {
        NavigationStack {
            ZStack {
                    switch selection {
                    case 1 where email.isEmpty : youNeedToSignView
//                    case 1 where vm.user.userId.isEmpty : myAlbumView
                    case 1 where !email.isEmpty : 
                        switch uploadedPhotosViewModel.uploadedImages.isEmpty {
                        case true:  addImagesView
                        case false: albumView
                        }
                    case 2: exploreView
                    default: EmptyView()
                    }
                    VStack {
                        
                        Picker("Pick", selection: $selection) {
                            Text("My albums").tag(1)
                            Text("Explore").tag(2)
                        }
                        .pickerStyle(.segmented)
                        .foregroundColor(Color.orange)
                        .onAppear {
                            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
                            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .normal)
                        }
                        .frame(height: 58)
//                        .background(Color.white)
                        .padding(.horizontal)
                        Spacer()
                    }
    //            }

            }
        }
    }
}

#Preview {
    GalleryExploreView(uploadedPhotosViewModel: UploadedPhotosViewModel())
}


//MARK: - Extensions:

extension GalleryExploreView {
    private var exploreView: some View {
        ScrollView(showsIndicators: false) {
            Spacer(minLength: 70)
            ForEach(vm.conceptUnits) {unit in
                ConceptView(image: unit.image, name: unit.name, text: unit.text, counter: unit.counter, selection: $selection)
            }
        }
    }
}


extension GalleryExploreView {
    private var youNeedToSignView: some View {
        ZStack{
            VStack {
                Text("You need to sign in.")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)

                NavigationLink(destination: SignInView()) {
                    Text("Sign in")
                        .frame(maxWidth: .infinity)
                        .frame(height: (UIScreen.main.bounds.width-32)/6)
                }
                .buttonStyle(.borderedProminent)
                .tint(.myRed)
                .padding(.horizontal, 30)

            }
        }
    }
}

extension GalleryExploreView {
    private var addImagesView: some View {
        ZStack{
            VStack {
                Text("Would you like to create AI images?")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
               
                NavigationLink(destination: BeforeYouStartView(uploadedPhotosViewModel: uploadedPhotosViewModel)) {
                    Text("Create AI images")
                        .frame(maxWidth: .infinity)
                        .frame(height: (UIScreen.main.bounds.width-32)/6)
                        .background(Color.myRed)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .padding(40)
                }         
            }
        }
    }
}

extension GalleryExploreView {
    private var albumView: some View {
        VStack(alignment: .leading){
            Text("")
                .padding(30)
            LazyVGrid(columns: myColumns) {
                NavigationLink {
                    AlbumView(images: uploadedPhotosViewModel.uploadedImages, text: text)
                } label: {
                    if let image = uploadedPhotosViewModel.uploadedImages.first {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width/2.3, height: UIScreen.main.bounds.width/2.3)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    }
                }
            }
            Text(petName)
                .bold()
                .padding(.vertical, 6)
            Text(text)
                .font(.footnote)
                .foregroundStyle(.gray)
            
            
            Spacer()
        }.padding()
    }
}
