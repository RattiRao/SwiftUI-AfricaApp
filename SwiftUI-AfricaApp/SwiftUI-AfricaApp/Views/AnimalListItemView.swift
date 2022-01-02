//
//  SwiftUIView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 02/01/22.
//

import SwiftUI

struct AnimalListItemView: View {
    var model: AnimalsModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            Image(model.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8){
                Text(model.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(model.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 8)
                
            }//: VStack
        }//: HStack
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let arrInfo: [AnimalsModel] = Bundle.main.decode("animals.json")
        AnimalListItemView(model: arrInfo.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
