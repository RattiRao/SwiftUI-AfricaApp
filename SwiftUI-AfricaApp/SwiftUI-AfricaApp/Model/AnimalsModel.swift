//
//  AnimalsModel.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 02/01/22.
//

import Foundation

struct AnimalsModel: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
