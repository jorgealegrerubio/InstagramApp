//
//  CustomButton.swift
//  InstagramApp
//
//  Created by Jorge Alegre Rubio on 26/5/24.
//

import SwiftUI

struct CustomButton: View {
    var text: String = "Login"
    var fontColor: Color = .white
    var heigth = 40.0
    @State var isDisabled = false
    var action: () -> Void
    
    var body: some View {
        HStack {
            Button {
                action()
            } label: {
                Text("Log in")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(fontColor)
            }
            .frame(height: heigth)
            .disabled(isDisabled)
            .background(isDisabled ? .cyan : .blue)
            .clipShape(RoundedRectangle(cornerRadius: 4))
        }
    }
}

#Preview {
    CustomButton(text: "", action: {
        print()
    })
}
