//
//  AuthRepositoryProtocol.swift
//  InstagramApp
//
//  Created by Jorge Alegre Rubio on 27/5/24.
//

import Foundation

protocol AuthRepositoryProtocol {
    func signIn(email: String, password: String) async throws
    func logOut() async throws 
}
