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
    
    
    var employee:Employee?=nil
    
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
            numberOfSeatsLabel.isHidden = false
            
        case 1:
            brandLabel.text = "Model"
            numberOfSeatsLabel.isHidden = true
            vehicleNumberOfSeats.isHidden = true
        default:
            break
        }
        
    }

    @IBAction func addVehcle(_ sender: Any) {
        let make = vehicleMake.text!
        let plate = vehiclePlate.text!
        switch vehicleType.selectedSegmentIndex {
        case 0:
            let type = "Car"
            let brand = brandTxt.text!
            let numberOfSeats = vehicleNumberOfSeats.text!
            if(make == nil || plate == nil || type == nil || brand == nil ){
                
                let alert = UIAlertController(title: "Empty Field", message: "Please Fill all the details", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
                
            }else{
                let car = Car(brand: brand, numberOfSeats: numberOfSeats.stringToInt(), make: make.stringToInt(), plate: plate, type: type)
                employee?.addVehicle(v: car)
            }
        case 1:
            let type = "Motorcycle"
            let model = brandTxt.text!
            
            if(make == nil || plate == nil || type == nil || model == nil){
                
                let alert = UIAlertController(title: "Empty Field", message: "Please Fill all the details", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
                
            }else{
                let motorcycle = Motorcycle(model: model, type: type, plate: plate, make: make.stringToInt())
                employee?.addVehicle(v: motorcycle)
            }
            
        default:
            break
        }
        
    }
    
}
