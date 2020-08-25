//
//  PasswordTextField.swift
//  instagram_clone
//
//  Created by Taeho Hwang on 2020/08/25.
//  Copyright © 2020 jason_practice. All rights reserved.
//

import SwiftUI

struct PasswordTextField: View {
    @Binding var password : String
    
    var body: some View {
        HStack{
            Image(systemName: "lock.fill").foregroundColor(COLOR_GRAY_30)
            SecureField(TEXT_PASSWORD, text: $password)
        }.modifier(TextFieldModifier())
    }
}
