//
//  RepositoryViewModel.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/18/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import Foundation

struct RepositoryViewModel {
    let repoName:  String
    let repoDescription: String
   // let userName: String
    let starCount: Int
}

extension RepositoryViewModel {
    init(repo: Repository){
        self.repoName = repo.name!
        self.repoDescription = repo.description!
        self.starCount = repo.stars!
    }
}


