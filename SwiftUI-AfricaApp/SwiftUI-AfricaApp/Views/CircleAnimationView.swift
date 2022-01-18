//
//  CircleAnimationView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 18/01/22.
//

import SwiftUI

struct CircleAnimationView: View {
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    func randomCoordinate(max: CGFloat) -> CGFloat{
        CGFloat.random(in: 0 ... max)
    }
    
    func randomSize() -> CGFloat {
        CGFloat(Int.random(in: 10 ... 300))
    }
    
    func randomScale() -> CGFloat{
        CGFloat(Double.random(in: 0.1 ... 2.0))
    }
    
    func randomSpeed() -> CGFloat{
        CGFloat.random(in: 0.025 ... 1.0)
    }
    
    func randomDelay() -> CGFloat{
        CGFloat.random(in: 0 ... 2)
    }
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                ForEach( 0 ... randomCircle, id: \.self){ item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .position(x: randomCoordinate(max: geometry.size.width), y: randomCoordinate(max: geometry.size.height))
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }//: LOOP
            }//: ZSTACK
            .drawingGroup()
        }//: GEOMETRY
    }
}

struct CircleAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleAnimationView()
    }
}
