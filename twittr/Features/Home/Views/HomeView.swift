//
//  HomeView.swift
//  twittr
//
//  Created by Coder XL on 3/20/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ... 20, id: \.self) {_ in
                    TweetBox()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
