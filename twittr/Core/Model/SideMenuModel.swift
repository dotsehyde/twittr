//
//  SideMenuModel.swift
//  twittr
//
//  Created by Benjamin on 27/06/2022.
//

import Foundation

enum SideMenuModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case logout

    var title: String {
        switch self {
        case .profile:
            return "Profile"
        case .lists:
            return "Lists"
        case .bookmarks:
            return "Bookmarks"
        case .logout:
            return "Logout"

        }
    }

    var imageName: String {
        switch self {
        case .profile:
            return "person"
        case .lists:
            return "list.bullet"
        case .bookmarks:
            return "bookmark"
        case .logout:
            return "arrow.left.square"

        }
    }
}
