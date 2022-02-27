//
//  AuthView.swift
//  AppAuth2
//
//  Created by Петр Постников on 20.02.2022.
//

import SwiftUI

struct AuthView:View{
    @State private var email:String = ""
    @State private var password: String = ""
    @State private var showSignInView: Bool = false
    @EnvironmentObject var authController:AuthController
    var body: some View{
        
            VStack{
                Text("Welcome to appMessage!")
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
                    authController.singUp(email: self.email, password: self.password)
                } label: {
                    Text("Create account")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.green)
                .clipShape(Capsule())
                Button {
                    showSignInView.toggle()
                } label: {
                    Text("Do you have account?")
                }
                .padding()
                .sheet(isPresented: $showSignInView) {
                    
                } content: {
                    SignInView(showSignInView: $showSignInView)
                }


            }
            .padding()
            .navigationTitle("Sign Up")
        
    }
    
}

//struct AuthView_Previews: PreviewProvider {
//    static var previews: some View {
//        AuthView()
//    }
//}
