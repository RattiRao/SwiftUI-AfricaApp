//
//  ContentView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 28/12/21.
//

import SwiftUI

struct ContentView: View {
    let arrAnimals: [AnimalsModel] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(arrAnimals){ item in
                    NavigationLink{
                        AnimalDetailView(animal: item)
                    } label: {
                        AnimalListItemView(model: item)
                    }//: Navigation Link
                }//: ForEach
            }//: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
