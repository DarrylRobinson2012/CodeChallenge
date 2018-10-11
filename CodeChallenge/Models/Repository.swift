//
//  Repository.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/17/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import Foundation

struct Repository: Codable {
    let name: String?
    let description: String?
    let stars: Int?
    
    enum CodingKeys: String, CodingKey {
        case name
        case description
        case stars = "stargazers_count"
    }
}
