//
//  CommissionBasedPartTime.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
enum EmployeeErrorcommission: Error {
    
    case InvalidData
}
class CommissionBasedPartTime:PartTime{
    
    var commissionPerc:Float
    
    
    init(id:Int,rate: Float,hoursWorked:Float,commissionPerc:Float,name:String,age:Int,type:String) throws
    {
        guard age > 0 else{
            throw EmployeeErrorcommission.InvalidData
        }
        self.commissionPerc=commissionPerc
        
        
        super.init(id: id, rate:rate,hoursWorked:hoursWorked,name:name,age:age, type: type)
        
    }

    override func calcEarnings() -> Float {
        let commission = hoursWorked * rate * commissionPerc/100;
       let finalSalary = hoursWorked * rate + commission;
        return finalSalary
    }
    func commission() -> Float{
         let commis = hoursWorked * rate * commissionPerc/100;
        return commis
    }
    
    override func printMyData() {
        
        
        super.printMyData();
        print("Commission   = \(commission().salaryFormat())" )
        print("Earnings     =  \(calcEarnings().salaryFormat())")
    }

}
