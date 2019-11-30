//
//  CircleImage.swift
//  testapp
//
//  Created by Takato Nakamatsu on 2019/11/09.
//  Copyright © 2019 Takato Nakamatsu. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("henoko")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
