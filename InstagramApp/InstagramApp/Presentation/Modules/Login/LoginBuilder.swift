//
//  LoginBuilder.swift
//  InstagramApp
//
//  Created by Jorge on 25/5/24.
//

import Foundation

final class LoginBuilder {
    func build() -> LoginView {
        let viewModel = LoginViewModel()
        return LoginView(viewModel: viewModel)
    }
}
