//
//  AuthDataSource.swift
//  InstagramApp
//
//  Created by Jorge Alegre Rubio on 27/5/24.
//

import Foundation
import FirebaseAuth

class AuthDataSource: AuthDataSourceProtocol {
    func signIn(email: String, password: String) async throws {
        try await Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func logOut() async throws {
        try Auth.auth().signOut()
    }
}
