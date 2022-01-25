//
//  GalleryView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 29/12/21.
//

import SwiftUI

struct GalleryView: View {
    
    @State var selectedAnimal: String = "lion"
    private var arrAnimals: [AnimalsModel] = Bundle.main.decode("animals.json")
    @State private var arrGalleryLayout: [GridItem] = Array.init(repeating: GridItem(.flexible()), count: 3)
    @State private var count: Double = 3.0
    func gridSwitch(){
        arrGalleryLayout = Array.init(repeating: GridItem(.flexible()), count: Int(count))
    }
    var body: some View {
        ScrollView(.vertical ,showsIndicators: false){
            Text("Gallery")
            VStack(alignment: .center, spacing: 30){
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                Slider(value: $count, in: 2 ... 4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: count) { newValue in
                        gridSwitch()
                    }
                
                LazyVGrid(columns: arrGalleryLayout, alignment: .center
                          , spacing: 10) {
                    ForEach(arrAnimals){ item in
                        Image(item.image)
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    }
                }//: GRID
                          .animation(.easeIn)
            }//: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
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
