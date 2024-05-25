//
//  LoginViewController.swift
//  InstagramApp
//
//  Created by Jorge on 25/5/24.
//

import SwiftUI

struct LoginView: View {
    let viewModel: LoginViewModel

    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 40) {
            Image("ig_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
            VStack(spacing: 12) {
                CustomTextField(placeholder: "Phone number, username or email adress", text: .constant(""))
                CustomTextField(placeholder: "Email", text: .constant(""), type: .password)

                HStack {
                    Spacer()
                    Text("Forgot password?")
                        .foregroundStyle(.blue)
                        .bold()
                        .font(Font.system(size: 14))
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    LoginBuilder().build()
}
