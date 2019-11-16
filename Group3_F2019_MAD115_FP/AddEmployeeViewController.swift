//
//  AddEmployeeViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddEmployeeViewController: UIViewController {

    @IBOutlet weak var lbl_1: UILabel!
    @IBOutlet weak var lbl_2: UILabel!
    @IBOutlet weak var lbl_3: UILabel!
    @IBOutlet weak var lbl_4: UILabel!
    @IBOutlet weak var lbl_5: UILabel!
    
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var txt4: UITextField!
    @IBOutlet weak var txt5: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var age: UITextField!
    
    
    @IBOutlet weak var segmentPartTime: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var sinObj=Singleton.getInstance()
    var empType:String = ""
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBAction func typeSegment(_ sender: Any) {
        
        switch segmentControl.selectedSegmentIndex
        {
            case 0:
                segmentPartTime.isHidden = true
                lbl_1.isHidden = false
                lbl_2.isHidden = false
                lbl_3.isHidden = true
                txt1.isHidden = false
                txt2.isHidden = false
                txt3.isHidden = true
                lbl_1.text = "Salary"
                lbl_2.text = "Bonus"
                empType = "FullTime"
            case 1:
                segmentPartTime.isHidden = true
                lbl_1.isHidden = false
                lbl_2.isHidden = true
                lbl_3.isHidden = true
                txt1.isHidden = false
                txt2.isHidden = true
                txt3.isHidden = true
               lbl_1.text = "School Name"
            empType = "Intern"
                          
            case 2:
                segmentPartTime.isHidden = false
                

                default:
                    break
                                                                  
        }
    
}
    @IBAction func segmentTypeEmployee(_ sender: Any) {
        switch segmentPartTime.selectedSegmentIndex
        {
        case 0:
            lbl_1.isHidden = false
            lbl_2.isHidden = false
            lbl_3.isHidden = true
            txt1.isHidden = false
            txt2.isHidden = false
            txt3.isHidden = true
            lbl_1.text = "Commission Perc"
            lbl_2.text = "Hours Worked"
            empType = "CommissionBasedPartTime"
        case 1:
            lbl_1.isHidden = false
            lbl_2.isHidden = false
            lbl_3.isHidden = false
            txt1.isHidden = false
            txt2.isHidden = false
            txt3.isHidden = false
            lbl_1.text = "Rate"
            lbl_2.text = "Hours Worked"
            lbl_3.text = "Fixed Amount"
            empType = "FixedBasedPartTime"
        default:
            break
        }
    }
    @IBAction func saveEmployeeBtn(_ sender: Any) {
        
        
        
        if empType.elementsEqual("FullTime"){
            let empAge = age.text
            let empBonus = txt2.text
            let empSalary = txt1.text
            if(firstName != nil && lastName != nil && empAge != nil && empBonus != nil && empSalary != nil)
            {
            let fullTimeEmployee=FullTime(name:(firstName.text!+" "+lastName.text!), age: (empAge?.stringToInt())!,bonus: (empBonus?.stringToFloat())!,salary: (empSalary?.stringToFloat())!,type:empType)
            sinObj.addEmployeeToDictionary(e: fullTimeEmployee)
            }
            else{
                
                let alert = UIAlertController(title: "Empty Field", message: "Please Fill all th details", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
                
            }
        }
        if empType.elementsEqual("Intern"){
            let empAge = age.text
            if(firstName != nil && lastName != nil && empAge != nil)
            {
            let internEmployee=Intern(name: (firstName.text!+" "+lastName.text!), age: (empAge?.stringToInt())!, schoolName: txt1.text!, type: empType)
            sinObj.addEmployeeToDictionary(e: internEmployee)
            }
            else{
                let alert = UIAlertController(title: "Empty Field", message: "Please Fill all th details", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)            }
        }
        
        if empType.elementsEqual("FixedBasedPartTime"){
            
            let empAge = age.text
            let fixAmt = txt3.text
            let rate = txt1.text
            let hours = txt2.text
            if(firstName != nil && lastName != nil && empAge != nil && fixAmt != nil && rate != nil && hours != nil)
            {
                let fixedBasedEmployee=FixedBasedPartTime(fixedAmount: (fixAmt?.stringToFloat())!, rate: (rate?.stringToFloat())!, hoursWorked: (hours?.stringToFloat())!, name: (firstName.text!+" "+lastName.text!), age: (empAge?.stringToInt())!, type: empType)
            sinObj.addEmployeeToDictionary(e: fixedBasedEmployee)
            }
            else{
                let alert = UIAlertController(title: "Empty Field", message: "Please Fill all th details", preferredStyle: .alert)
                               
                               alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                               
                               self.present(alert, animated: true)
            }
            let stbHome=UIStoryboard(name: "Main", bundle: nil)
            let HomeVC = stbHome.instantiateViewController(withIdentifier: "HomeVC") as! HomeTableViewController
            navigationController?.pushViewController(HomeVC, animated: true)
        }
    }
}
