//
//  BottomNavView.swift
//  twittr
//
//  Created by Coder XL on 3/20/22.
//

import SwiftUI

struct BottomNavView: View {
    @State var index=0;
    var body: some View {
        TabView(selection: $index,
                content:  {
                    HomeView().onTapGesture {
                        self.index=0
                    }.tabItem {
                        VStack{
                            Image(systemName: "house")
                            Text("Home")
                        } }.tag(0)
                    ProfileView().onTapGesture {
                        self.index=1
                    }.tabItem {
                        VStack{Image(systemName: "magnifyingglass")
                            Text("Search")
                        } }.tag(1)
                    Text("Notification").onTapGesture {
                        self.index=2
                    }.tabItem {
                        VStack{Image(systemName: "bell")
                            Text("Notification")
                        } }.tag(2)
                    Text("Message").onTapGesture {
                        self.index=3
                    }.tabItem {
                        VStack{Image(systemName: "envelope")
                            Text("Message")
                        } }.tag(3)
                })
    }
}

struct BottomNavView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavView()
    }
}
