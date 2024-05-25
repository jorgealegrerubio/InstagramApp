//
//  CustomTextField.swift
//  InstagramApp
//
//  Created by Jorge on 25/5/24.
//

import SwiftUI

enum TextFieldType {
    case text
    case password
}

struct CustomTextField: View {
    let placeholder: String
    @Binding var text: String
    @State private var isSecured = true
    var type: TextFieldType = .text

    var body: some View {
        HStack {
            HStack() {
                switch type {
                    case .text:
                        TextField(placeholder, text: $text)
                            .font(Font.system(size: 14))
                    case .password:
                        if isSecured {
                            SecureField(placeholder, text: $text)
                                .font(Font.system(size: 14))

                        } else {
                            TextField(placeholder, text: $text)
                                .font(Font.system(size: 14))
                        }

                        Button {
                            self.isSecured.toggle()
                        } label: {
                            Image(systemName: isSecured ? "eye.fill" : "eye.slash.fill")
                                .padding(.trailing, 12)
                                .foregroundColor(isSecured ? .blue : .gray)
                        }
                }
            }
            .padding(.horizontal, 10)
        }
        .frame(height: 45)
        .background(RoundedRectangle(cornerRadius: 4)
            .stroke(.textFieldBorder, lineWidth: 1)
            .background(Color(.textFieldBackground)))
    }
}

#Preview {
    CustomTextField(
        placeholder: "asdas",
        text: .constant(""),
        type: .password
    )
}
