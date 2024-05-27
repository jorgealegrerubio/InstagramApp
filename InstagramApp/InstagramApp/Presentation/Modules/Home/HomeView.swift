//
//  HomeView.swift
//  InstagramApp
//
//  Created by Jorge Alegre Rubio on 26/5/24.
//

import SwiftUI

struct HomeView: View {
    var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            HStack {
                Image("ig_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 30)
                Spacer()
                HStack (spacing: 24) {
                    Button  {
                        logOut()
                    } label: {
                        Image("ic_heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 24)
                    }

                    Image("ic_message")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 24)
                    Image("ic_plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 24)
                }
            }
            .padding(.horizontal, 16)
            ScrollView(.horizontal) {
                HStack {
                   //TODO: Foreach con las imágenes
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 60)
                        .clipShape(Circle())
                        .overlay {
                            ZStack {
                                Circle()
                                    .foregroundColor(.blue)
                                    .frame(width: 20, height: 20)
                                Image(systemName: "plus")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.white)
                            }
                            .offset(x: 20, y: 20)
                        }
                }
                .padding(.horizontal, 16)
            }
            Color(.gray)
                .frame(height: 0.5)
            Spacer()
        }
    }
    
    func logOut() {
        let dataSource = AuthDataSource()
        let repository = AuthRepository(dataSource: dataSource)
        let useCase = AuthUseCase(repository: repository)
        
        Task {
            do {
                try await useCase.logOut()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    HomeBuilder().build()
}
