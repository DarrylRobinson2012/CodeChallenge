//
//  RepoCell.swift
//  CodeChallenge
//
//  Created by Darryl Robinson  on 9/18/18.
//  Copyright © 2018 ATLcoders. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var repositoryNameLabel: UILabel!
    @IBOutlet weak var repositoryDescriptionLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var starImage: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with viewModel: RepositoryViewModel) {
        repositoryNameLabel.text = viewModel.repoName
        repositoryDescriptionLabel.text = viewModel.repoDescription
       // userNameLabel.text = viewModel.userName
        starLabel.text = String(viewModel.starCount)
    }

}
