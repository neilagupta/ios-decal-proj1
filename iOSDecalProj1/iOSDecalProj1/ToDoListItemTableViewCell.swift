//
//  ToDoListItemTableViewCell.swift
//  iOSDecalProj1
//
//  Created by Neil Ambar Gupta on 10/18/16.
//  Copyright © 2016 Neil Ambar Gupta. All rights reserved.
//

import UIKit

class ToDoListItemTableViewCell: UITableViewCell {

    @IBOutlet weak var ToDoItemTitleLabel: UILabel!
    @IBOutlet weak var ToDoItemDetailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.backgroundColor = UIColor.green
        // Configure the view for the selected state
    }

}
