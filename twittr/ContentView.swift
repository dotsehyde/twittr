//
//  ContentView.swift
//  twittr
//
//  Created by Coder XL on 3/20/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu: Bool = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            BottomNavView()
                .navigationBarHidden(showMenu)

            if showMenu {
                ZStack {
                    Color.black.opacity(showMenu ? 0.4 : 0)
                }
                    .onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }

                }
                    .ignoresSafeArea()
            }

            SideMenuView()
                .background(Color.white)
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300)

                .ignoresSafeArea()

        }
            .onAppear(perform: {
            showMenu = false
            })
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut) {

                        showMenu.toggle()
                    }
                } label: {

                    Circle().frame(width: 32, height: 32, alignment: .center)
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
