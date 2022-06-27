//
//  SideMenuView.swift
//  twittr
//
//  Created by Benjamin on 27/06/2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Name")
                        .font(.headline)
                    Text("@username")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                UserStatsView()
                    .padding(.vertical)
            }
                .padding(.top)
                .padding(.horizontal)
            ForEach(SideMenuModel.allCases, id: \.rawValue) { e in
                if(e == .profile) {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuRow(option: e)
                    }

                } else if e == .logout {
                    Button {
                        print("Logout")

                    } label: {
                        SideMenuRow(option: e)
                    }
                } else {
                    SideMenuRow(option: e)
                }

            }
                .padding(.vertical, 5)
            Spacer()
        }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()

    }
}

//MARK: - SideMenuRow
struct SideMenuRow: View {
    let option: SideMenuModel
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: option.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            Text(option.title)
                .font(.headline)
                .foregroundColor(.black)
            Spacer()
        }
            .imageScale(.large)
            .frame(height: 40)
            .padding(.horizontal)
    }
}

struct SideMenuRow_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRow(option: .profile)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
