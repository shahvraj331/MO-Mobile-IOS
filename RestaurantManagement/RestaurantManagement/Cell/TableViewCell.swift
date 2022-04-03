//
//  TableViewCell.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 03/04/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var imgTableImage: UIImageView!
    @IBOutlet weak var lblFoodName: UILabel!
    @IBOutlet weak var lblFoodPrice: UILabel!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btnTotal: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btnSubmitOrder: UIButton!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
