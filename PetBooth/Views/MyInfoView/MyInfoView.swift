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
    @State var showSheet = false

    var body: some View {

        NavigationStack {
            ZStack {
                // background:
                Color.myInfoBackground.ignoresSafeArea()

                // content:
                ScrollView {
                        Text("My Info")
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)

                    if !email.isEmpty {
                        RowView(image: "emailLogo", text: email, amount: nil)
                            .padding(.vertical)
                    }

                    ForEach(email.isEmpty ? Array(vm.myInfoRows.dropFirst(2)) : vm.myInfoRows) { row in
                        NavigationLink(destination:Text(row.text)) {
                            RowView(image: row.image, text: row.text, amount: row.amount)
                        }
                    }

                    if !email.isEmpty {
                        Text("")
                            .padding()
                        Button(action: {
                            email = ""
                        }, label: {
                            StrokeButton(title: .logout)
                        })
                        .padding(.vertical)
                        Button("Delete account") {
                            showSheet.toggle()
                        }
                        .sheet(isPresented: $showSheet, content: { 
                            DeleteAccountView()
                            .presentationDetents([.medium, .large])
                        })
                    }
                }.padding()
            }
        }
    }
}

#Preview {
        MyInfoView()
}
