//
//  EmployeeDetailsViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class EmployeeDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var sinObj = Singleton.getInstance()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (e?.vdict.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let e = sinObj.returnEmpObj(empId: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "vehicleCell", for: indexPath) as! VehicleTableViewCell
        
        let vehArray = e?.returnVehicleArray()
        
        let vehType = vehArray?[indexPath.row].type
        cell.vehicleType.text = "Employee has a \(String(describing: vehType))"
        if (vehType?.elementsEqual("Motorcycle"))!{
            cell.brandLbl.text = "Model"
            let m = vehArray?[indexPath.row] as! Motorcycle
            cell.brand.text = m.model
            cell.make.text = m.make.intToStr()
            cell.plate.text = m.plate
            
        }
        
        return cell
    }
    

    @IBOutlet weak var empID: UILabel!
    @IBOutlet weak var empName: UILabel!
    
    @IBOutlet weak var dateOfBirth: UILabel!
    @IBOutlet weak var empType: UILabel!
    @IBOutlet weak var totalEarn: UILabel!
    
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl1_1: UILabel!
    @IBOutlet weak var lbl2_2: UILabel!
    @IBOutlet weak var lbl3_3: UILabel!
    var e : Employee?=nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        empID.text = e?.empId.intToStr()
        empName.text = e?.name
        dateOfBirth.text = e?.dateOfBirth.intToStr()
        empType.text = e?.type
        totalEarn.text = e?.calcEarnings().floatToStr()
        
        if e?.type == "FullTime"{
            lbl1.text = "Salary"
            let f = e as! FullTime
            lbl1_1.text = f.salary.floatToStr()
            lbl2.text = "Bonus"
            lbl2_2.text = f.bonus.floatToStr()
        }
        if e?.type == "Intern"{
        lbl1.text = "School Name"
        let i = e as! Intern
            lbl1_1.text = i.schoolName
        
        }
        
        if e?.type == "FixedBasedPartTime"{
        lbl1.text = "Fixed Amount"
            lbl2.text = "Rate"
            lbl3.text = "Hours Worked"
        let fix = e as! FixedBasedPartTime
            lbl1_1.text = fix.fixedAmount.floatToStr()
            lbl2_2.text = fix.rate.floatToStr()
            lbl3_3.text = fix.hoursWorked.floatToStr()
        }
        
        if e?.type == "CommissionBasedPartTime"{
        lbl1.text = "Commission Percentage"
            lbl2.text = "Hours Wroked"
            lbl3.text = "Rate"
        let comm = e as! CommissionBasedPartTime
            lbl1_1.text = comm.commissionPerc.floatToStr()
            lbl2_2.text = comm.hoursWorked.floatToStr()
            lbl3_3.text = comm.rate.floatToStr()
        }
}
    
}
