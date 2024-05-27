//
//  AuthUseCase.swift
//  InstagramApp
//
//  Created by Jorge Alegre Rubio on 27/5/24.
//

import Foundation

class AuthUseCase: AuthUseCaseProtocol {
    private let repository: AuthRepositoryProtocol
    
    init(repository: AuthRepositoryProtocol) {
        self.repository = repository
    }
    
    func signIn(email: String, password: String) async throws {
        try await repository.signIn(email: email, password: password)
    }
    
    func logOut() async throws {
        try await repository.logOut()
    }
}
