//
//  AnimalDetailView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 03/01/22.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: AnimalsModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
                    .padding(.vertical, 8)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                //GALLERY
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }//: GROUP
                
                //FACTS
                
                
                //DESCRIPTION
                
                //MAP
                
                //LINK
                
            }//: VStack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//: ScrollView
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let arrAnimal: [AnimalsModel] = Bundle.main.decode("animals.json")
        NavigationView{
            AnimalDetailView(animal: arrAnimal.first!)
        }
    }
}
