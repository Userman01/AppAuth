//
//  MainView.swift
//  AppAuth2
//
//  Created by Петр Постников on 20.02.2022.
//

import SwiftUI

struct MainView:View{
    @EnvironmentObject var  authController:AuthController
    @State private var countView = 1
    var body: some View{
        VStack{
            switch(countView){
            case 1: HomeView()
            case 2: SearchView()
            case 3: ProfileView()
            default:
                MessangerView()
            }
            Spacer()
            HStack{
                
                Button {
                    countView = 1
                } label: {
                    Image(systemName: "house")
                }.buttonStyle(MyButtonStyle())
                    .foregroundColor(countView == 1 ? .white : .black)
                
                Button {
                    countView = 2
                } label: {
                    Image(systemName: "magnifyingglass")
                }.buttonStyle(MyButtonStyle())
                    .foregroundColor(countView == 2 ? .white : .black)
                Button {
                    countView = 3
                } label: {
                    Image(systemName: "paperplane")
                }.buttonStyle(MyButtonStyle())
                    .foregroundColor(countView == 3 ? .white : .black)
                Button {
                    countView = 4
                } label: {
                    Image(systemName: "person")
                }.buttonStyle(MyButtonStyle())
                    .foregroundColor(countView == 4 ? .white : .black)
            }
            
            .background(Color.gray.edgesIgnoringSafeArea(.all))
         
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(25)
            
            .background(Color.gray)
            
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
