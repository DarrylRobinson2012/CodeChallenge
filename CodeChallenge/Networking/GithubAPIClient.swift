//
//  GithubAPIClient.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/19/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import Foundation

class GithubApiClient {
    
   
   
    let downloader = JSONDownloader()
        
    func getRepos(completion: @escaping (TrendingRepo?, GithubError?)-> Void)  {
    
        guard let url = URL(string: "https://api.github.com/search/repositories?q=created:>2017-10-22&sort=stars&order=desc") else {
            completion(nil, .invalidData)
            return
        }
        let request = URLRequest(url: url)
        
        let task = downloader.jsonTask(with: request) { json, error in
            DispatchQueue.main.async {
            guard let json = json else {
                completion(nil, error)
                return
            }
            guard let repository = TrendingRepo(json: json) else {
                completion(nil, .jsonParsingFailure(message:"JSON does not contain repos"))
                return
            }
            completion(repository, nil)
            }
    }
        
    task.resume()
        
    }
    
}
    







