//
//  ContentView.swift
//  instagram_clone
//
//  Created by Taeho Hwang on 2020/08/25.
//  Copyright © 2020 jason_practice. All rights reserved.
//

import SwiftUI

struct SigninView: View {
    @State var email : String = ""
    @State var password : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                SigninHeaderView()
                Spacer()
                Divider()
                EmailTextField(email: $email)
                PasswordTextField(password: $password)
                SigninButton(actoin: {}, label: TEXT_SIGN_IN)
                Divider()
                NavigationLink(destination: SignupView()) {
                    SignupText()
                }
            }
        }.accentColor(Color.black)
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
