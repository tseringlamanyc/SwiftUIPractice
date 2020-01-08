//
//  SwiftUIView.swift
//  SwiftUIPractice
//
//  Created by Tsering Lama on 1/7/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import SwiftUI

struct StupaImage: View {
    var body: some View {
        Image("stupa")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 2))
            .shadow(radius: 10)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StupaImage()
    }
}
