//
//  ContentView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 28/12/21.
//

import SwiftUI

struct ContentView: View {
    let arrAnimals: [AnimalsModel] = Bundle.main.decode("animals.json")
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    @State private var isGridActive: Bool = false
    @State private var toolBarIcon: String = "square.grid.2x2"
    
    @State var arrGridItem: [GridItem] = [GridItem(.flexible())]
    
    func switchGrid() {
        arrGridItem = Array(repeating: GridItem(.flexible()), count: arrGridItem.count%3 + 1)
        
        switch arrGridItem.count{
        case 1:
            toolBarIcon = "square.grid.2x2"
        case 2:
            toolBarIcon = "square.grid.2x2"
        case 3:
            toolBarIcon = "rectangle.grid.1x2"
            
        default:
            toolBarIcon = "square.grid.2x2"
        }
    }
    
    var body: some View {
        NavigationView{
            Group{
                if !isGridActive{
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
                }
                else{
                    ScrollView(.vertical, showsIndicators: false){
                        LazyVGrid(columns: arrGridItem, alignment: .center, spacing: 10) {
                            ForEach(arrAnimals){ item in
                                AnimalGridItemView(animal: item)
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem.init(placement: .navigationBarTrailing) {
                    HStack(spacing: 16){
                        Button.init {
                            isGridActive = false
                            haptic.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridActive ? .primary : .accentColor)
                        }
                        
                        Button.init {
                            isGridActive = true
                            haptic.impactOccurred()
                            switchGrid()
                        } label: {
                            Image(systemName: toolBarIcon)
                                .font(.title2)
                                .foregroundColor(isGridActive ? .accentColor : .primary)
                        }
                    }//: HSTACK
                }
            }//: TOOLBAR
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
