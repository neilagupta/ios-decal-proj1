//
//  ToDoListItemTableViewCell.swift
//  iOSDecalProj1
//
//  Created by Neil Ambar Gupta on 10/18/16.
//  Copyright © 2016 Neil Ambar Gupta. All rights reserved.
//

import UIKit

class ToDoListItemTableViewCell: UITableViewCell {
      
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected == true) {
            //Changes background color when selected
            
            self.backgroundColor = UIColor.blue
        } else {
            self.backgroundColor = UIColor.white
        }
        // Configure the view for the selected state
    }

}
