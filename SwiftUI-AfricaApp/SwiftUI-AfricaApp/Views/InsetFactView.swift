//
//  InsetFactView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 05/01/22.
//

import SwiftUI

struct InsetFactView: View {
    let animal: AnimalsModel
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//: TAB VIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight:148, idealHeight: 168, maxHeight: 180)
        }//: GROUP BOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        let arrAnimal: [AnimalsModel] = Bundle.main.decode("animals.json")
        InsetFactView(animal: arrAnimal.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
