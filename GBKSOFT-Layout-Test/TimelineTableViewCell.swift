//
//  TimelineTableViewCell.swift
//  GBKSOFT-Layout-Test
//
//  Created by Vitaly Plivachuk on 9/6/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var isActiveView: UIView!
    
    @IBOutlet var userImages: [UIImageView]!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        userImages.forEach{$0.isHidden = true}
        isActiveView.layer.cornerRadius = isActiveView.frame.height / 2
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
