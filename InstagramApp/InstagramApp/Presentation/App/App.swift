//
//  InstagramAppApp.swift
//  InstagramApp
//
//  Created by Jorge on 25/5/24.
//

import SwiftUI

@main
struct InstagramAppApp: App {
    var body: some Scene {
        WindowGroup {
            LoginBuilder().build()
        }
    }
}
