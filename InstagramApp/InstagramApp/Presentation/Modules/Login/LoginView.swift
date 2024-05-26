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
            Spacer()
                .frame(height: 120)
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
                VStack(spacing: 32) {
                    VStack(spacing: 16) {
                        CustomButton(text: "Log in", isDisabled: false) {
                            //TODO: Login
                        }
                        
                        HStack {
                            Color(.gray)
                                .frame(height: 0.4)
                            Text("OR")
                                .foregroundStyle(.gray)
                                .font(Font.system(size: 14))
                            Color(.gray)
                                .frame(height: 0.4)
                        }
                    }
                    Button {
                        //TODO: Sign in with google
                    } label: {
                        Text("Sign in with google")
                    }
                }
                
                Spacer()
                
                VStack(spacing: 36) {
                    Color(.gray)
                        .frame(height: 0.4)
                    HStack {
                        Text("Dont have an account?")
                            .foregroundStyle(.gray)
                            .font(Font.system(size: 14))
                        Button {
                            //TODO: Go to sign up page
                        } label: {
                            Text("Sign Up.")
                                .font(Font.system(size: 14))
                        }
                    }
                }
            }
        }
        .ignoresSafeArea(.keyboard, edges: .all)
        .padding(.horizontal, 16)
    }
}

#Preview {
    LoginBuilder().build()
}
