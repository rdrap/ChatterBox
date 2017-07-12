//
//  PostCell.swift
//  ChatterBox
//
//  Created by Ryan Draper on 7/10/17.
//  Copyright © 2017 iDTech. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
