//
//  GithubAPIClient.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/19/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import Foundation
import UIKit

class GithubApiClient {
    
   
   
    let downloader = JSONDownloader()
    
    typealias repoCompletionHandler = (Repository?,GithubError?) -> Void
    typealias trendingRepoHandler = (TrendingRepo?, GithubError?) -> Void
        
    private func getRepos(completion: @escaping trendingRepoHandler)  {
    
      let url = URL(string: "https://api.github.com/search/repositories?q=tetris+language:assembly&sort=stars&order=desc")!
        
        
        let request = URLRequest(url: url)
      
        
        let task = downloader.jsonTask(with: request) { json, error in
            guard let json = json else {
                completion(nil, error)
                
                return
            }
            
           print(json)
          guard  let repository = TrendingRepo(json: json) else {
                completion(nil, .jsonParsingFailure(message:"JSON does not contain repos"))
                return
            }
            completion(repository, nil)
            print(repository)
                
            }
        task.resume()
    }
        
  
    
    
    func gettrendingRepo(completion: @escaping repoCompletionHandler) {
        getRepos {
    repository, error in
    completion(repository?.items, error)
            
    }
        
 }
    
}
    







