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
    
    var stub : Stub?
    var repos : Repository?
    var dataSource = RepositoryDataSource(repos: [Stub.repository])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
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


}
