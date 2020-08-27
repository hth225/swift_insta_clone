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
    @State var showImagePicker : Bool = false
    @State var image : Image = Image(IMAGE_USER_PLACEHOLDER)
    @State var imageData : Data = Data()
    func signUp() {
//        Firebase.createAccount(username: username, email: email, password: password, imageData: imageData)
    }
    
    var body: some View {
        VStack {
            image.resizable().aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle()).padding(.bottom, 80)
                .onTapGesture {
                    self.showImagePicker = true
            }
            UserNameTextField(username: $username)
            EmailTextField(email: $email)
            VStack(alignment: .leading) {
                PasswordTextField(password: $password)
                Text(TEXT_SIGNUP_PASSWORD_REQUIRED).font(.footnote).foregroundColor(.gray).padding(.leading)
            }
            SignupButton(actoin: signUp, label: TEXT_SIGN_UP)
            Divider()
            Text(TEXT_SIGNUP_NOTE).font(.footnote).foregroundColor(.gray).padding().lineLimit(2)
            }
        .sheet(isPresented: $showImagePicker) {
//            ImagePickerController()
            ImagePicker(showImagePicker: self.$showImagePicker, pickedImage: self.$image, imageData: self.$imageData)
        }
        .navigationBarTitle("Register", displayMode: .inline)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
