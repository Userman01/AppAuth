//
//  AuthController.swift
//  AppAuth2
//
//  Created by Петр Постников on 20.02.2022.
//

import SwiftUI
import FirebaseAuth

class AuthController:ObservableObject {
    
    @Published var showMainView:Bool = false
    
    let auth = Auth.auth()
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    func signOut(){
        try? auth.signOut()
        self.showMainView = false
    }
    
    func singUp(email: String, password: String){
        auth.createUser(withEmail: email, password: password) {[weak self] result, error in
            guard result != nil, error == nil else{return}
            DispatchQueue.main.async {
            self?.showMainView = true
            }
        }
    }
    
    func singIn(email: String, password: String){
        auth.signIn(withEmail: email, password: password) {[weak self] result, error in
            guard result != nil, error == nil else {return}
            
            DispatchQueue.main.async {
            self?.showMainView = true
            }
        }
    }
    
}
