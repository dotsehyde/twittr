//
//  ExploreView.swift
//  twittr
//
//  Created by Benjamin on 27/06/2022.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...25, id: \.self) { _ in
                    NavigationLink(destination: {
                        ProfileView()
                    }, label: {
                        UserItemView()
                    })

                }
            }
        }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)

    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}


