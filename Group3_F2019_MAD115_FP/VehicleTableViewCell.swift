//
//  VehicleTableViewCell.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class VehicleTableViewCell: UITableViewCell {

    @IBOutlet weak var vehicleType: UILabel!
    @IBOutlet weak var plate: UILabel!
    @IBOutlet weak var make: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var seats: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
