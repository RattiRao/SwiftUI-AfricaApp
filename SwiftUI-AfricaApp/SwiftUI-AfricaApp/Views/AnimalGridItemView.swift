//
//  AnimalGridItemView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 27/01/22.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: AnimalsModel!
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        let arrAnimal: [AnimalsModel] = Bundle.main.decode("animals.json")
        AnimalGridItemView(animal: arrAnimal.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
