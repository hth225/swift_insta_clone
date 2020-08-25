//
//  UserNameTextField.swift
//  instagram_clone
//
//  Created by Taeho Hwang on 2020/08/25.
//  Copyright © 2020 jason_practice. All rights reserved.
//

import SwiftUI

struct UserNameTextField: View {
    @Binding var username : String
    var body: some View {
        HStack{
            Image(systemName: "person.fill").foregroundColor(COLOR_GRAY_30)
            TextField("Username", text: $username)
        }.modifier(TextFieldModifier())
    }
}
