//
//  Repository.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/17/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import Foundation
import UIKit

struct Repository {
    let repoName: String
    let description: String
    let stars: Int
    let userName : owner
    let avatar: UIImage?
    
}
struct owner {
    let name: String
}

extension owner {
    init?(json: [String: AnyObject]) {
        struct key {
            static let name = "login"
        }
        guard let userNameValue = json[key.name] as? String else{ return nil
    }
        self.init(name: userNameValue)
}
}
extension Repository {

    struct key {
        static let repoName = "name"
        static let description = "description"
        static let stars = "stargazers_count"
        static let userName = "owner"
    }
    
    init?(json:[String:AnyObject]) {
        guard let repoNameValue = json[key.repoName] as? String,
            let descriptionValue = json[key.description] as? String,
            let starValue = json[key.stars] as? Int,
            let userNameValue = json[key.userName] as? String else {
                return nil
    }
        self.repoName  = repoNameValue
        self.description = descriptionValue
        self.stars = starValue
        self.userName = owner.init(name: userNameValue)
        self.avatar = #imageLiteral(resourceName: "AnaSalama.png")
    }
}
