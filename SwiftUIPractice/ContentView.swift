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
        ZStack { // overlapping content 
            Color.black
                .edgesIgnoringSafeArea(.all)
        VStack {
            MapView()
                .frame(height: 400)
            
            StupaImage()
                .offset(y: -130) // moves image upward
                .padding(.bottom, -130) // from bottom of the view
            
            VStack(alignment: .leading) { // aligns by leading edges
                Text("Boudha Stupa")
                    .font(.title)
                    .foregroundColor(.white)
                HStack {
                    Text("Kathmandu")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    Spacer() // creates space and pushes them to the oppsite side of the screen
                    Text("Nepal")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            .padding() // gives label more space so its not sticking to the edges of screen
            Spacer() // pushes it up
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
