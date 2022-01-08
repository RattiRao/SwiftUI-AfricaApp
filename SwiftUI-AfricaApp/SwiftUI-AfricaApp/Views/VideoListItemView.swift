//
//  VideoListItemView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 08/01/22.
//

import SwiftUI

struct VideoListItemView: View {
    let video: VideoModel
    var body: some View {
        HStack(spacing: 10){
            ZStack{
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//: ZSTACK
            
            VStack(alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }//: VSTACK
        }//: HSTACK
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        let arrVideo: [VideoModel] = Bundle.main.decode("videos.json")
        VideoListItemView(video: arrVideo.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
