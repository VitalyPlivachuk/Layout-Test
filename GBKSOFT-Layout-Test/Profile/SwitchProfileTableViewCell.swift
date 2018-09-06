//
//  SwitchProfileTableViewCell.swift
//  GBKSOFT-Layout-Test
//
//  Created by Vitaly Plivachuk on 9/6/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import UIKit

class SwitchProfileTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var valueSwitch: PWSwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
