//
//  HabitCell.swift
//  HabitTracker
//
//  Created by Cruz Arreola on 9/23/25.
//

import UIKit

class HabitCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!

    @IBOutlet weak var habitLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
