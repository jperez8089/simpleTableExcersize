//
//  NameAndColorCell.swift
//  TableCells
//
//  Created by Javier Perez Primary on 3/5/18.
//  Copyright © 2018 JavierPerez. All rights reserved.
//

import UIKit

class NameAndColorCell: UITableViewCell {
    
    var name: String = ""{
        didSet {
            if(name != oldValue) {
                nameLabel.text = name
            }
        }
    }
    var color: String = ""{
        didSet {
            if (color != oldValue) {
                colorLabel.text = color
            }
        }
    }
   @IBOutlet var nameLabel: UILabel!
   @IBOutlet var colorLabel: UILabel!
    
    

        
    }
    


    
    


