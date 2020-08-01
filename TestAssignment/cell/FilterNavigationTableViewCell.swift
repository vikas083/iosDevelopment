//
//  FilterNavigationTableViewCell.swift
//  IWAI
//
//  Created by preeti dhankar on 15/07/20.
//  Copyright © 2020 iwai.gov.in. All rights reserved.
//

import UIKit

class FilterNavigationTableViewCell: UITableViewCell {

    @IBOutlet weak var enterLoactionTxt: UITextField!
    @IBOutlet weak var currentLocationBtn: UIButton!
    @IBOutlet weak var SelectdateBtn: UIButton!
    @IBOutlet weak var selectitamBtn: UIButton!
    @IBOutlet weak var applyfilterBtn: UIButton!
    @IBOutlet weak var bgView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
