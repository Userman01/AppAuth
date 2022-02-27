//
//  AppAuth2App.swift
//  AppAuth2
//
//  Created by Петр Постников on 20.02.2022.
//

import SwiftUI
import Firebase

@main
struct AppAuth2App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            let authController = AuthController()
            ContentView().environmentObject(authController)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        
        FirebaseApp.configure()
        
        return true
    }
}
