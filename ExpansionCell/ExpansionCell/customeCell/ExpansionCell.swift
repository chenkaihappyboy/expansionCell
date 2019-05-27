//
//  ExpansionCell.swift
//  ExpansionCell
//
//  Created by 陈凯 on 2019/5/27.
//  Copyright © 2019 陈凯. All rights reserved.
//

import UIKit

class ExpansionCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
