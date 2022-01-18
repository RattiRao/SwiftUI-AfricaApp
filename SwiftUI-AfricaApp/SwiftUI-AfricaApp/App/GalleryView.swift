//
//  GalleryView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 29/12/21.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical ,showsIndicators: false){
            Text("Gallery")
        }//: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CircleAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
