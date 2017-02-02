//
//  HomeDatasource.swift
//  TwitterLB
//
//  Created by Dominik Sadowski on 1/30/17.
//  Copyright © 2017 Dominik Sadowski. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    let users: [User] = {
        let brianUser = User(name: "Brian Rayan", username: "@iamDaBrian", bioText: "I am a Brian that is also Rayan", profileImage: #imageLiteral(resourceName: "dog"))

        
        let dominikUser = User(name: "Dominik Sadowski", username: "@DS3", bioText: "I am a mobile app developer", profileImage: #imageLiteral(resourceName: "dog2"))
        
        let appUser = User(name: "App User", username: "@anyappuser", bioText: "Anyone can use this app to promote their ideas and views about the world and the universe. You can use this platform to ramble on and on about anything that you would like to ramble on. I am rambling right now about absolutely nothing.", profileImage: #imageLiteral(resourceName: "dog"))
        
        return [brianUser, dominikUser, appUser]
    }()
    
    let tweets: [Tweet] = {
        
        let dominikUser = User(name: "Dominik Sadowski", username: "@DS3", bioText: "I am a mobile app developer", profileImage: #imageLiteral(resourceName: "dog2"))
        
        let tweet = Tweet(user: dominikUser, message: "Welcome to my demo application i would like you to enjoy the app and the work that has been put in to develop the app.")
        let tweet2 = Tweet(user: dominikUser, message: "Welcome to my demo application i would like you to enjoy the app and the work that has been put in to develop the app. This the second sample tweet that is longer then the previous one for demo purposes.")
        return[tweet, tweet2]
    }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.row]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
}

