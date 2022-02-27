//
//  ContentView.swift
//  AppAuth2
//
//  Created by Петр Постников on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authController:AuthController
    var body: some View {
        NavigationView{
            if authController.showMainView{
                MainView()
            }else{
                AuthView()
            }
        }.onAppear {
            authController.showMainView = authController.isSignedIn
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
