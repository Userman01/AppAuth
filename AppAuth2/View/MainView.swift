//
//  MainView.swift
//  AppAuth2
//
//  Created by Петр Постников on 20.02.2022.
//

import SwiftUI

struct MainView:View{
    @EnvironmentObject var  authController:AuthController
    var body: some View{
        VStack{
            Text("Hello")
            Button {
                authController.signOut()
            } label: {
                Text("Exit")
            }

        }
    }
}
