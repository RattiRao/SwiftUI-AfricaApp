//
//  VideoModel.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 08/01/22.
//

import Foundation

struct VideoModel: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String{
        "video-\(id)"
    }
}
