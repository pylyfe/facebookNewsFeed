//
//  CustomTabBarController.swift
//  facebookFeed20180212part01-01
//
//  Created by Regio Abundan on 2/21/18.
//  Copyright © 2018 SwiftLYFE. All rights reserved.
//

import Foundation
import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feedController = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController(rootViewController: feedController)
        navigationController.title = "News Feed"
        navigationController.tabBarItem.image = UIImage(named: "news_feed_icon")
        
        
        let friendRequestsController = FriendRequestsController()
        let secondNavigationController = UINavigationController(rootViewController: friendRequestsController)
        secondNavigationController.title = "Requests"
        secondNavigationController.tabBarItem.image = UIImage(named: "requests_icon")
        
        
        let messengerNavigationController = UINavigationController(rootViewController: MessengerController())
        messengerNavigationController.title = "Messenger"
        messengerNavigationController.tabBarItem.image = UIImage(named: "messenger_icon")
        
        let notificationsNavigationController = UINavigationController(rootViewController: NotificationsController())
        notificationsNavigationController.title = "Notifications"
        notificationsNavigationController.tabBarItem.image = UIImage(named: "globe_icon")
        
        let moreNavigationController = UINavigationController(rootViewController: MoreController())
        moreNavigationController.title = "More"
        moreNavigationController.tabBarItem.image = UIImage(named: "more_icon")
        
        
        viewControllers = [navigationController, secondNavigationController, messengerNavigationController, notificationsNavigationController, moreNavigationController]
        
        tabBar.isTranslucent = false
        
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: 1000, height: 0.5)
        topBorder.backgroundColor = UIColor.rgb(red: 229, green: 231, blue: 235).cgColor
        
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
    }
}
