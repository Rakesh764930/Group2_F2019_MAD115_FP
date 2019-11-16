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
    
    
    @IBOutlet weak var segmentPartTime: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var sinObj=Singleton.getInstance()
            
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBAction func typeSegment(_ sender: Any) {
        
        switch segmentControl.selectedSegmentIndex
        {
            case 0:
                lbl_1.isHidden = false
                lbl_2.isHidden = false
                txt1.isHidden = false
                txt2.isHidden = false
            
                lbl_1.text = "Salary"
                lbl_2.text = "Bonus"
            case 1:
                lbl_1.isHidden = false
                txt1.isHidden = false
            
               lbl_1.text = "School Name"
                          
            case 2:
                segmentPartTime.isHidden = false
                switch segmentPartTime.selectedSegmentIndex
                {
                case 0:
                    lbl_1.isHidden = false
                    lbl_2.isHidden = false
                    txt1.isHidden = false
                    txt2.isHidden = false
                                                      
                    lbl_1.text = "Commission Perc"
                    lbl_2.text = "Hours Worked"
                case 1:
                    lbl_1.isHidden = false
                    lbl_2.isHidden = false
                    lbl_3.isHidden = false
                                                                              
                    lbl_1.text = "Rate"
                    lbl_2.text = "Hours Worked"
                    lbl_3.text = "Fixed Amount"
                default:
                    break
                }

                default:
                    break
                                                                  
        }
    
}
}
