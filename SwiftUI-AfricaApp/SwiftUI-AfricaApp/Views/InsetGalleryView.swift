//
//  InsetGalleryView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 03/01/22.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: AnimalsModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }//: HSTACK
        }//: SCROLL VIEW
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        let arrAnimal: [AnimalsModel] = Bundle.main.decode("animals.json")
        InsetGalleryView(animal: arrAnimal.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
