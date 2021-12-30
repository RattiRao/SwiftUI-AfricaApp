//
//  CoverImageView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 30/12/21.
//

import SwiftUI

struct CoverImageView: View {
    let arrCoverImage: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView{
            ForEach(arrCoverImage) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//: LOOP
        }//: TAB
        .tabViewStyle(.page)
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
