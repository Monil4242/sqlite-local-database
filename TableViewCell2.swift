//
//  TableViewCell2.swift
//  sqlite local database
//
//  Created by monil sojitra on 03/04/23.
//

import UIKit

class TableViewCell2: UITableViewCell {

   
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
