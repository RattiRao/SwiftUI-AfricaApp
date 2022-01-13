//
//  VideoPlayerHelper.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 13/01/22.
//

import Foundation
import AVKit

func playVideo(fileName: String, fileFormat: String) -> AVPlayer?{
    var videoPlayer: AVPlayer?
    if let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat){
        videoPlayer = AVPlayer(url: url)
        videoPlayer?.play()
    }
    return videoPlayer
}
