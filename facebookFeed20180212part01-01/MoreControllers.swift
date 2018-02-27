//
//  MoreControllers.swift
//  facebookFeed20180212part01-01
//
//  Created by Regio Abundan on 2/21/18.
//  Copyright © 2018 SwiftLYFE. All rights reserved.
//

import UIKit

class MoreController: UITableViewController {
    
    static let cellId = "cellId"
    static let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Friend Requests"
        
        tableView.separatorColor = UIColor.rgb(red: 229, green: 231, blue: 235)
        tableView.sectionHeaderHeight = 26
}
}
