//
//  MyInfoView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 27.03.2024.
//

import SwiftUI

struct MyInfoView: View {
    let vm = ViewModel()
    @AppStorage("email") var email = ""
    @AppStorage("firstName") var firstName = ""
    @AppStorage("lastName") var lastName = ""
    @AppStorage("userID") var userID = ""

    @State var showSheet = false
    var body: some View {
        NavigationStack {
            List {
                //MARK: - Section id:
                if !email.isEmpty {
                    Section {
                        RowView(image: "Frame 41943-2", text: email, amount: nil)
                    }
                    .listSectionSpacing(50)
                }
                //MARK: - Section main:
                ForEach(email.isEmpty ? Array(vm.myInfoRows.dropFirst(2)) : vm.myInfoRows) { row in
                    Section {
                        NavigationLink(destination: 
                                        VStack {
                            Image(row.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 100, height: 100)
                            Text(row.text)
                                .font(.title)
                                .padding()
                        }
                        
                        ) {
                            RowView(image: row.image, text: row.text, amount: row.amount)
                        }
                    }.navigationTitle("My Info")
                        .listStyle(.insetGrouped)
                        .listSectionSpacing(10)
                }

                //MARK: - Section logout:
                Section {
                    Button(action: {
                        email = ""
                    }, label: {
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 1.0)
                            .overlay {
                                Text("Logout")
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 58)
                    })
                    .padding(.vertical) 

                    .listRowBackground(Color.clear)
                }
                Section {
                    HStack {
                        Spacer()
                        Button("Delete account") {
                                showSheet.toggle()
                            }
                            .sheet(isPresented: $showSheet, content: {
                                VStack{
                                    Text("Delete account")
                                        .font(.title)
                                        .foregroundStyle(.myRed)
                                        .bold()
                                        .padding()
                                    Text("Open up the Setting app in your iPhone and tap on your name at the top. Then press Password & Security, then Apple ID login They listed all the apps there and you can delete any of them to revoke access.")
                                }
                                                                .padding(30)
                                                                .presentationDetents([.medium, .large])
                        })
                        Spacer()
                    }
                    }
                    .foregroundStyle(Color.accentColor)



                .listRowBackground(Color.clear)

            } // END: List
            //MARK: - END: List

        }
    }
}

#Preview {
        MyInfoView()
}
