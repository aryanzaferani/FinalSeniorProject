//
//  WordCell.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/29/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class WordCell: UITableViewCell {

    @IBOutlet weak var word: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
