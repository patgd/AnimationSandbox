//
//  ContentView.swift
//  AnimationSandbox
//
//  Created by pat on 12/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
//            Stepper("Scale Amount", value: $animationAmount.animation(), in: 1...10)
            
            Text("Click Me")
                .onTapGesture {
                   animationAmount += 1
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.red)
                        .scaleEffect(animationAmount)
                        .opacity(2 - animationAmount)
                        .animation(
                            .easeOut(duration: 1)
                                .repeatForever(autoreverses: false),
                            value: animationAmount
                        )
                )
                .padding(100)
                .onAppear { animationAmount = 2 }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
