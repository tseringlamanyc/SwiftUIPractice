//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Tsering Lama on 1/7/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            VStack(alignment: .leading) {
                Text("Boudha Stupa")
                    .font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Kathmandu")
                        .font(.subheadline)
                    Spacer()
                    Text("Nepal")
                        .font(.subheadline)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
