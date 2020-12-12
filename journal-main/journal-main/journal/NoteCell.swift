//
//  NoteCell.swift
//  journal
//
//  Created by Oscar Lara on 12/10/20.
//

import UIKit

class NoteCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var contentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
