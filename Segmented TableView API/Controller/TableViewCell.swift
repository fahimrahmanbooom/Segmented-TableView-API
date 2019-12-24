//
//  TableViewCell.swift
//  Segmented TableView API
//
//  Created by Fahim Rahman on 24/12/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var newsTitle: UILabel!
    
    @IBOutlet weak var authorName: UILabel!
    
    @IBOutlet weak var publishedLabel: UILabel!
    
    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var newsTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
