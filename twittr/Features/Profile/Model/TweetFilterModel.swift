//
//  TweetFilterModel.swift
//  twittr
//
//  Created by Benjamin on 05/04/2022.
//

import Foundation

enum TweetFilterModel:Int,CaseIterable {
    case tweets
    case replies
    case likes
     
    var title:String {
        switch self {
        case .tweets:
            return "Tweets"
        case .likes:
            return "Likes"
        case .replies:
            return "Replies"
        }
    }
}
