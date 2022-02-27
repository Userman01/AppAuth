//
//  IfHaveAccountView.swift
//  AppAuth2
//
//  Created by Петр Постников on 20.02.2022.
//

import Foundation
import FirebaseAuth
import SwiftUI

struct SignInView:View{
    @State private var email:String = ""
    @State private var password: String = ""
    @Binding var showSignInView: Bool
    init(showSignInView: Binding<Bool>){
        self._showSignInView = showSignInView
    }
    @EnvironmentObject var authController:AuthController
    var body: some View{
        NavigationView{
            VStack{
                Text("Add form for sign in!")
                    .font(.callout)
                    .padding()
                TextField("email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(.gray)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                SecureField("password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(.gray)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                Button {
                    authController.singIn(email: self.email, password: self.password)
                } label: {
                    Text("Sign in")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.green)
                .clipShape(Capsule())
                
                Button {
                    showSignInView = false
                } label: {
                    Text("Back to sign up")
                }
                .padding()

            }
            .padding()
            .navigationTitle("Sign in")
        }
    }
}
