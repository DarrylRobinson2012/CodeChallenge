//
//  TrendingRepo.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/19/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import Foundation
struct TrendingRepo {
    let items: Repository
    
}

extension TrendingRepo {
    init?(json: [String: AnyObject]) {
        guard let repositoryJSON = json["items"] as? [String:AnyObject], let repository = Repository(json: repositoryJSON)
            else {
                return nil
        }
        self.items = repository
    
    }
    
}
