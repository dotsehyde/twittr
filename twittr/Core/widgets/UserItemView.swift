//
//  UserItemView.swift
//  twittr
//
//  Created by Benjamin on 27/06/2022.
//

import SwiftUI

struct UserItemView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Circle()
                .frame(width: 48, height: 48, alignment: .center)
            VStack(alignment: .leading, spacing: 4) {
                Text("Name")
                    .font(.headline)
                    .foregroundColor(.black)
                Text("Username")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
            .padding(.horizontal)
            .padding(.vertical, 4)
    }
}

struct UserItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserItemView()
            .previewLayout(.sizeThatFits)
    }
}
