//
//  CircleImage.swift
//  swiftUIDemo
//
//  Created by 陈淑洋 on 2020/3/5.
//  Copyright © 2020 chensy. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image.clipShape(Circle())
            .overlay(Circle()
            .stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:Image("turtlerock"))
    }
}
