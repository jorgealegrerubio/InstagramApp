//
//  AuthRepository.swift
//  InstagramApp
//
//  Created by Jorge Alegre Rubio on 27/5/24.
//

import Foundation

class AuthRepository: AuthRepositoryProtocol {
    private let dataSource: AuthDataSourceProtocol
    
    init(dataSource: AuthDataSourceProtocol) {
        self.dataSource = dataSource
    }
    
    func signIn(email: String, password: String) async throws {
        try await dataSource.signIn(email: email, password: password)
    }
    
    func logOut() async throws {
        try await dataSource.logOut()
    }
}
