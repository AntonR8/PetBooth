//
//  SignInView.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 26.03.2024.
//

import SwiftUI
import AuthenticationServices

struct SignInView: View {
    @AppStorage("email") var email = ""
    @AppStorage("firstName") var firstName = ""
    @AppStorage("lastName") var lastName = ""
    @AppStorage("userID") var userID = ""
    
    var body: some View {
        ZStack{
            //background
            Color.black.ignoresSafeArea()
            VStack {
                Image("Frame 7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(LinearGradient(colors: [.clear,  .black], startPoint: .top, endPoint: .bottom))
                    }
                Spacer()
            }.ignoresSafeArea()
            
            //MARK: - content START

            VStack{
                //MARK: - content Logo
                Spacer()
                Image("Group 2")
                Text("Pet AI Studio")
                    .foregroundStyle(.white)
                    .font(.title)
                    .bold()
                    .padding()

                //MARK: - Button
                SignInWithAppleButton(.signIn) { request in
                    request.requestedScopes = [.email, .fullName]
                } onCompletion: { result in
                    switch result {
                    case .success(let auth):
                        switch auth.credential {
                        case let credential as ASAuthorizationAppleIDCredential:
                            let email = credential.email
                            let firstName = credential.fullName?.givenName
                            let lastName = credential.fullName?.familyName
                            let userID = credential.user

                            self.email = email ?? ""
                            self.firstName = firstName ?? ""
                            self.lastName = lastName ?? ""
                            self.userID = userID


                        default: break
                        }
                    case .failure(let error):
                        print(error)
                    }
                }
                .frame (height: 50)
                .overlay{
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .padding()
                }
                .padding(.vertical)
                
                //MARK: - Terms of Use
                HStack {
                    Text("If you proceed to sign up")
                    Link(destination: URL(string: "http://antonr8.tilda.ws/appstoreconnectsupport")!, label: {
                        Text("Terms of Use")
                            .underline()
                    })

                    Text(" And")
                }
                .foregroundStyle(.gray)
                .font(.caption)
                .padding(.horizontal)
                .multilineTextAlignment(.center)

                HStack {
                    Link(destination: URL(string: "http://antonr8.tilda.ws/appstoreconnectsupport")!, label: {
                        Text("Privacy Policy")
                            .underline()
                    })
                    Text("You have agreed to the following.")
                }
                .foregroundStyle(.gray)
                .font(.caption)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            }

            //MARK: - content END

        } // END: ZStack
    }
}

#Preview {
    SignInView()
}
