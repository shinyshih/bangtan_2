//
//  BangtanTableViewCell.swift
//  bangtan_2
//
//  Created by 施馨檸 on 11/12/2017.
//  Copyright © 2017 施馨檸. All rights reserved.
//

import UIKit

class BangtanTableViewCell: UITableViewCell {

    @IBOutlet weak var memberImageView: UIImageView!
    @IBOutlet weak var memberNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
