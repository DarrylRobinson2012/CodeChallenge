//
//  Repository.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/17/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import Foundation
import UIKit

class Repository {
    let repoName: String
    let description: String
    let stars: Int
    let userName: String
    let avatar: UIImage?
    
    init(repoName: String, description: String, stars: Int, userName: String, avatar: UIImage){
        self.repoName = repoName
        self.description = description
        self.stars = stars
        self.userName = userName
        self.avatar = avatar
    }
    
}
