//
//  SigninButton.swift
//  instagram_clone
//
//  Created by Taeho Hwang on 2020/08/25.
//  Copyright © 2020 jason_practice. All rights reserved.
//

import Foundation
import SwiftUI

struct SigninButton: View {
    var actoin : () -> Void
    var label : String
    var body: some View {
        Button(action: actoin) {
            HStack {
                Spacer()
                Text(label).fontWeight(.bold).foregroundColor(Color.white)
                Spacer()
            }
        }.modifier(SigninButtonModifier())
    }
}
