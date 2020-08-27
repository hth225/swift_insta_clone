//
//  EmailTextField.swift
//  instagram_clone
//
//  Created by Taeho Hwang on 2020/08/25.
//  Copyright © 2020 jason_practice. All rights reserved.
//

import SwiftUI

struct EmailTextField: View {
    @Binding var email: String
    
    var body: some View {
        HStack{
            Image(systemName: "envelope.fill").foregroundColor(COLOR_GRAY_30)
            TextField(TEXT_EMAIL, text: $email).autocapitalization(.none)
        }.modifier(TextFieldModifier())
    }
}
