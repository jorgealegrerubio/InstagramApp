//
//  LoginViewModel.swift
//  InstagramApp
//
//  Created by Jorge on 25/5/24.
//

import Foundation

@Observable
class LoginViewModel: ObservableObject {
    let authUseCase: AuthUseCaseProtocol
    
    init(authUseCase: AuthUseCaseProtocol) {
        self.authUseCase = authUseCase
    }
    
    func signIn(email: String, password: String) {
        Task {
            do {
                try await authUseCase.signIn(email: email, password: password)
            } catch {
                //TODO: Handle error
            }
        }
    }
}
