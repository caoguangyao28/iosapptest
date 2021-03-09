//
//  CircleImage.swift
//  TestApp
//
//  Created by 曹光耀 on 2021/3/9.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .frame(width: 250.0, height: 250.0)
            .clipShape(Circle())
            .overlay( // 添加边框
                Circle().stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/) // 10个点的阴影
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
