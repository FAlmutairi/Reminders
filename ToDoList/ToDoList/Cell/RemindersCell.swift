//
//  RemindersCell.swift
//  ToDoList
//
//  Created by Feras Al Mutairi on 20/01/1446 AH.
//

import UIKit

class RemindersCell: UITableViewCell {
    
    // UIViews
    @IBOutlet weak var remindersView: UIView!
    
    //UILabels
    @IBOutlet weak var remindersTitleLabel: UILabel!
    @IBOutlet weak var remindersDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        remindersView.layer.cornerRadius = 8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
