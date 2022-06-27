//
//  HomeView.swift
//  twittr
//
//  Created by Coder XL on 3/20/22.
//

import SwiftUI

struct HomeView: View {
    @State private var showNewTweet = false
    @Environment(\.presentationMode) var pM
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetBox()
                    }
                }
            }
            Button {
                withAnimation(.easeInOut) {
                    showNewTweet.toggle()
                }
            } label: {
                Image(systemName: "pencil.and.outline")
                    .imageScale(.large)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 28, height: 28)
                    .padding()
            }
                .background(Color(.systemBlue))
                .clipShape(Circle())
                .padding()
                .fullScreenCover(isPresented: $showNewTweet) {
                Text("New Tweet Box")
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showNewTweet.toggle()
                        }
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
