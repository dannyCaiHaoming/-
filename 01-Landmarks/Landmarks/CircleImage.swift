//
//  CircleImage.swift
//  Landmarks
//
//  Created by 蔡浩铭 on 2020/11/2.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("first")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.yellow,lineWidth: 10))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
