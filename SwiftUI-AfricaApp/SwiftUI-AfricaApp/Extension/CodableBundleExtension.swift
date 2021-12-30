//
//  CodableBundleExtension.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 30/12/21.
//

import Foundation

extension Bundle{
    func decode(_ fileName: String) -> Array<CoverImageModel>{
        //Get file
        guard let fileUrl = self.url(forResource: fileName, withExtension: nil) else{
            fatalError("Failed to find url for \(fileName)")
        }
        //Get data
        guard let data = try? Data(contentsOf: fileUrl) else{
            fatalError("Failed to retrieve data from \(fileName)")
        }
        //Decode
        guard let arrCoverImage = try? JSONDecoder.init().decode([CoverImageModel].self, from: data) else{
            fatalError("Decoding error from \(fileName)")
        }
        //Return
        return arrCoverImage
    }
}
