//
//  HomeBuilder.swift
//  InstagramApp
//
//  Created by Jorge Alegre Rubio on 26/5/24.
//

import SwiftUI

final class HomeBuilder    {
    func build() -> HomeView {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
