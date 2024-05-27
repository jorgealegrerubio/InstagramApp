//
//  LoginBuilder.swift
//  InstagramApp
//
//  Created by Jorge on 25/5/24.
//

import Foundation

final class LoginBuilder {
    func build() -> LoginView {
        let authDataSource = AuthDataSource()
        let authRepository = AuthRepository(dataSource: authDataSource)
        let authUseCase = AuthUseCase(repository: authRepository)
        
        let viewModel = LoginViewModel(authUseCase: authUseCase)
        return LoginView(viewModel: viewModel)
    }
}
