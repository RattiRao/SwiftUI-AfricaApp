//
//  VideoPlayerView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 13/01/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var selectedVideo: String
    var videoTitle: String
    
    var body: some View {
        VStack{
            if let player = playVideo(fileName: selectedVideo, fileFormat: "mp4"){
                VideoPlayer(player: player)
                    .overlay(
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .padding(.top, 6)
                            .padding(.horizontal, 8),
                        alignment: .topLeading
                    )
            }
            else{
                Text("Unavailable")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
        }//: VStack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VideoPlayerView(selectedVideo: "lion", videoTitle: "Lion")
        }
    }
}
