//
//  AnnotationView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 15/01/22.
//

import SwiftUI

struct AnnotationView: View {
    let location: LocationModel
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + animation)
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }//: ZSTACK
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct AnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        let arrLocation: [LocationModel] = Bundle.main.decode("locations.json")
        AnnotationView(location: arrLocation.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
