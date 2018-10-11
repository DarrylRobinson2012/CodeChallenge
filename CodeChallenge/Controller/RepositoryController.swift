//
//  RepositoryController.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/17/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import UIKit

class RepositoryController: UITableViewController {

    private struct Constant {
        static let AlbumCellHeight: CGFloat = 80
    }
    
        var repos : Repository?
    //var dataSource = RepositoryDataSource(repos: self.repos)

    lazy var dataSource: RepositoryDataSource = {
        return RepositoryDataSource(repos: [])
    }()
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        RepoManager.fetchTrendingRepos { trending in
            print(trending)
        }
        tableView.dataSource = dataSource
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    func displayRepository(using viewModel: RepositoryViewModel) {
     
        
        
        
    }
    
   /* func fetchRepos() {
        client.gettrendingRepo() { repository, error in
            
            // handle repository logic here
            print("fetchRepos client repository: \(repository)")
        }
    }
    
    */

}


