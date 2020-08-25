//
//  SingupView.swift
//  instagram_clone
//
//  Created by Taeho Hwang on 2020/08/25.
//  Copyright © 2020 jason_practice. All rights reserved.
//

import SwiftUI

struct SignupView: View {
    @State var username : String = ""
    @State var email : String = ""
    @State var password : String = ""
    
    var body: some View {
        VStack {
            Image(IMAGE_USER_PLACEHOLDER).resizable().aspectRatio(contentMode: .fill).frame(width: 50, height: 50).clipShape(Circle()).padding(.bottom, 80)
            UserNameTextField(username: $username)
            EmailTextField(email: $email)
            VStack(alignment: .leading) {
                PasswordTextField(password: $password)
                Text(TEXT_SIGNUP_PASSWORD_REQUIRED).font(.footnote).foregroundColor(.gray).padding(.leading)
            }
            SignupButton(actoin: {}, label: TEXT_SIGN_UP)
            Divider()
            Text(TEXT_SIGNUP_NOTE).font(.footnote).foregroundColor(.gray).padding().lineLimit(2)
        }.navigationBarTitle("Register", displayMode: .inline)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
