//
//  SigninHeaderView.swift
//  instagram_clone
//
//  Created by Taeho Hwang on 2020/08/25.
//  Copyright © 2020 jason_practice. All rights reserved.
//

import SwiftUI

struct SigninHeaderView: View {
    var body: some View {
        Group {
            Image(IMAGE_LOGO).resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80)
            Text(TEXT_SIGNIN_HEADLINE).font(Font.title).padding(.bottom)
            Text(TEXT_SIGNIN_SUBHEADLINE).font(Font.subheadline).foregroundColor(.gray).multilineTextAlignment(.center)
        }
    }
}
