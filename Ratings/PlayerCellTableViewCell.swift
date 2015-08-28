//
//  PlayerCellTableViewCell.swift
//  Ratings
//
//  Created by hexadecymalny on 26/07/15.
//  Copyright © 2015 hexadecymalny. All rights reserved.
//

import UIKit

class PlayerCellTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
