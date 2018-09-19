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

extension Repository {
    convenience init?(json: [String: AnyObject]) {
    struct key {
        static let repoName = "name"
        static let description = "description"
        static let stars = "stargazers_count"
        static let userName = "login"
    }
    
        guard let repoNameValue = json[key.repoName] as? String,
            let descriptionValue = json[key.description] as? String,
            let starValue = json[key.stars] as? Int,
            let userNameValue = json[key.userName] as? String else {
                return nil
    }
        self.init(repoName: repoNameValue, description: descriptionValue, stars: starValue, userName: userNameValue, avatar: #imageLiteral(resourceName: "AnaSalama.png"))
    
    }
}
