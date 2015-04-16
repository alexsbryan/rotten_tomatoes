//
//  MovieCellTableView.swift
//  Rotten Tomatoes
//
//  Created by Alex & Chelsea Bryan on 4/15/15.
//  Copyright (c) 2015 Alex. All rights reserved.
//

import UIKit

class MovieCellTableView: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
