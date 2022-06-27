//
//  ProfileView.swift
//  twittr
//
//  Created by Coder XL on 3/20/22.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var pM
    @State var sFilter: TweetFilterModel = TweetFilterModel.tweets
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButton
            userInfo
            filterBar
            tweetView
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue).ignoresSafeArea()
            VStack {
                Button(action: {
                    pM.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.backward").resizable().foregroundColor(.white).frame(width: 20, height: 16)
                        .offset(x: 5, y: 0)
                })
                Circle().frame(width: 72, height: 72).offset(x: 16, y: 24)
            }
        }.frame(height: 96)
            .navigationBarHidden(true)
    }

    var actionButton: some View {
        HStack {
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/ { }/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "bell.badge")
                    .foregroundColor(.black)
                    .font(.title3).padding(6)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            })
            Button(action: /*@START_MENU_TOKEN@*/ { }/*@END_MENU_TOKEN@*/, label: {
                Text("Edit Profile")
                    .font(.subheadline).bold().foregroundColor(.black).padding(6)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            })
        }
            .padding(.trailing)
    }

    var userInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("My Name").font(.title2).bold()
                Image(systemName: "checkmark.seal.fill").foregroundColor(.blue)

            }
            Text("@username").font(.subheadline).foregroundColor(.gray)
            Text("About Bio").font(.subheadline).padding(.vertical)
            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Location")
                }
                HStack {
                    Image(systemName: "link")
                    Text("www.website.com")
                }
            }.font(.caption).foregroundColor(.gray)
            UserStatsView()
                .padding(.vertical)

        }.padding(.horizontal)
    }

    var filterBar: some View {
        HStack {
            ForEach(TweetFilterModel.allCases, id: \.self) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(sFilter == item ? .semibold : .regular)
                        .foregroundColor(sFilter == item ? .black : .gray)
                    if(sFilter == item) {
                        Capsule()
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(height: 3).matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }

                }
                    .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.sFilter = item
                    }
                }

            }
        }
            .overlay(Divider().offset(x: 0, y: 16))
    }

    var tweetView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetBox()
                }
            }
        }
    }
}

//MARK: - UserStatsView
struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack (spacing: 4) {
                Text("800").font(.subheadline).bold()
                Text("following").font(.caption).foregroundColor(.gray)
            }
            HStack {
                Text("5.5M").font(.subheadline).bold()
                Text("followers").font(.caption).foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
