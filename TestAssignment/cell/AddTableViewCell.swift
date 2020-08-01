//
//  AddTableViewCell.swift
//  TestAssignment
//
//  Created by preeti dhankar on 01/08/20.
//  Copyright © 2020 Viks. All rights reserved.
//

import UIKit

class AddTableViewCell: UITableViewCell {
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var addressLib: UILabel!
    @IBOutlet weak var dateLib: UILabel!
    @IBOutlet weak var titleLib: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
