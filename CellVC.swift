//
//  CellVC.swift
//  Movies
//
//  Created by Ruth on 4/21/18.
//  Copyright © 2018 Ruth. All rights reserved.
//

import UIKit

class CellVC: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var Destextdescreption: UITextView!
    @IBOutlet weak var Labertext: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
