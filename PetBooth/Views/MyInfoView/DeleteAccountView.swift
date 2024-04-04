//
//  DeleteAccountView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI

struct DeleteAccountView: View {
    var body: some View {
        VStack{
            Text("Delete account")
                .bold()
                .font(.title)
                .foregroundStyle(.myRed)
                .padding()
            Text("Open up the Setting app in your iPhone and tap on your name at the top. Then press Password & Security, then Apple ID login They listed all the apps there and you can delete any of them to revoke access.")
        }
        .padding(30)
    }
}

#Preview {
    DeleteAccountView()
}
