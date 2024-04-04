//
//  SignInView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI

struct SignInView: View {
    
    var body: some View {
        ZStack{
            //background
     BackgroundLogo()

            // content:

            VStack{
                Spacer()
                Image("WhiteLogo")
                Text("Pet AI Studio")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding()

                SignInAppleButton()

                Group {
                    HStack {
                        Text("If you proceed to sign up")
                        Link(destination: URL(string: "http://antonr8.tilda.ws/appstoreconnectsupport")!, label: {
                            Text("Terms of Use")
                                .underline()
                        })
                        Text(" And")
                    }
                    HStack {
                        Link(destination: URL(string: "http://antonr8.tilda.ws/appstoreconnectsupport")!, label: {
                            Text("Privacy Policy")
                                .underline()
                        })
                        Text("You have agreed to the following.")
                    }
                }
                .foregroundColor(.gray)
                .font(.caption)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            }
        } // END: ZStack
    }
}

#Preview {
    SignInView()
}
