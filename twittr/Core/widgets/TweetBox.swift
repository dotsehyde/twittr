//
//  tweetBox.swift
//  twittr
//
//  Created by Coder XL on 3/20/22.
//

import SwiftUI

struct TweetBox: View {
    var body: some View {
        VStack(alignment: .leading ){
            HStack{
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 56, height: 56)
                VStack(alignment: .leading
                ){
                    HStack{
                Text("Name").font(.subheadline).bold()
                Text("@username").font(.caption).foregroundColor(.gray)
                        Text("2w").font(.caption).foregroundColor(.gray)
                        
                    }
                    Text("My tweet is nice").multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                
            }
           
            HStack{
                Button(action: {}
                       , label: {
                    Image(systemName: "heart")
                })
                Spacer()
                
                Button(action: {}
                       , label: {
                    Image(systemName: "arrow.2.squarepath")
                })
                Spacer()
                Button(action: {}
                       , label: {
                    Image(systemName: "heart")
                })
                Spacer()
                Button(action: {}
                       , label: {
                    Image(systemName: "bookmark")
                })
                    
                
            }.padding().foregroundColor(.gray)
            Divider()
        }.padding()
    }
}

struct tweetBox_Previews: PreviewProvider {
    static var previews: some View {
        TweetBox().previewLayout(.sizeThatFits)
    }
}
