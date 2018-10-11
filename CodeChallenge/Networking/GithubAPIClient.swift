//
//  GithubAPIClient.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/19/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import Foundation
import UIKit

struct RepoManager {
    static func fetchTrendingRepos(completion: @escaping (TrendingRepository) -> Void) {
        NetworkManager.fetchEndpoint(URL(string: "https://api.github.com/search/repositories?q=tetris+language:assembly&sort=stars&order=desc")!) { data in
            
            let decoder = JSONDecoder()
            
            if let trending = try? decoder.decode(TrendingRepository.self, from: data) {
                completion(trending)
            }
        }
    }
}
    







