//
//  SignInAppleButton.swift
//  PetBooth
//
//  Created by Антон Разгуляев on 03.04.2024.
//

import SwiftUI
import AuthenticationServices

struct SignInAppleButton: View {
    @AppStorage("email") var email = ""
    @AppStorage("firstName") var firstName = ""
    @AppStorage("lastName") var lastName = ""
    @AppStorage("userID") var userID = ""
    
    var body: some View {
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
        .background(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 1)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
        )
        .padding()
    }
}

#Preview {
    SignInAppleButton()
}
