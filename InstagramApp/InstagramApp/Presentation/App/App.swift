//
//  InstagramAppApp.swift
//  InstagramApp
//
//  Created by Jorge on 25/5/24.
//

import SwiftUI
import Firebase

@main
struct InstagramAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            if Auth.auth().currentUser != nil {
                HomeBuilder().build()
            } else {
                LoginBuilder().build()
            }
        }
    }
}
