//
//  VideoListView.swift
//  SwiftUI-AfricaApp
//
//  Created by Ratti on 29/12/21.
//

import SwiftUI

struct VideoListView: View {
    let arrVideo: [VideoModel] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView{
            List{
                ForEach(arrVideo){ item in
                    NavigationLink {
                        VideoPlayerView(selectedVideo: item.id, videoTitle: item.name)
                    } label: {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }
            }//: LIST
            .listStyle(.insetGrouped)
            .navigationBarTitle("Videos", displayMode: .inline)
        }//: NAVIGATION
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
