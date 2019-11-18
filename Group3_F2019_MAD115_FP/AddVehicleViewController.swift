//
//  AddVehicleViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddVehicleViewController: UIViewController {

    @IBOutlet weak var vehicleMake: UITextField!
    @IBOutlet weak var vehiclePlate: UITextField!
    @IBOutlet weak var vehicleType: UISegmentedControl!
    @IBOutlet weak var vehicleBrand: UITextField!
    @IBOutlet weak var vehicleNumberOfSeats: UITextField!
    @IBOutlet weak var brandTxt: UITextField!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var numberOfSeatsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func vehicleTypeAction(_ sender: Any) {
        
        switch vehicleType.selectedSegmentIndex{
        case 0:
            vehicleBrand.isHidden = false
            vehicleNumberOfSeats.isHidden = false
            brandTxt.isHidden = false
            vehicleNumberOfSeats.isHidden = false
        case 1:
            brandLabel.text = "Model"
            numberOfSeatsLabel.isHidden = true
            vehicleNumberOfSeats.isHidden = true
        default:
            break
        }
        
    }
    
}
