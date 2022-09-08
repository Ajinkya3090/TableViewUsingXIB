//
//  XIBTableViewCell.swift
//  TableViewUsingXIB
//
//  Created by admin on 08/09/22.
//

import UIKit

class XIBTableViewCell: UITableViewCell {

    @IBOutlet var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
