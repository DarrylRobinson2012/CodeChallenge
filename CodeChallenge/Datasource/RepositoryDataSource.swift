//
//  RepositoryDataSource.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/17/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//


//FIX AUTOLAYOUT

import UIKit

class RepositoryDataSource: NSObject, UITableViewDataSource {

    
    private var repos : [Repository]
    let client = GithubApiClient()
    init(repos: [Repository]) {
        self.repos = repos
        super.init()
    }
    

    
    //Mark: DataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return repos.count
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepoCell", for: indexPath) as! RepoCell
        
        let repo = repos[indexPath.row]
        let viewModel = RepositoryViewModel(repo: repo)
        
        cell.configure(with: viewModel)
       
        
        return cell
    }
    

    
    
    
    }
    
    

