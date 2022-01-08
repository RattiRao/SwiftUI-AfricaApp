//
//  ExternalWebLinkView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 08/01/22.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: AnimalsModel
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikepedia")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://www.wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            }// HStack
        }//: GROUP BOX
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        let arrAnimal: [AnimalsModel] = Bundle.main.decode("animals.json")
        ExternalWebLinkView(animal: arrAnimal.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
