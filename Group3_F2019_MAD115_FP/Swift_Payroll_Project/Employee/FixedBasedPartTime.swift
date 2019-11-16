//
//  FixedBasedPartTime.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-17.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
enum EmployeeError: Error {
    
    case InvalidData
}
class FixedBasedPartTime : PartTime
    

    
{
    
    var sinObj=Singleton.getInstance()
    
    var fixedAmount:Float
    
    init(id:Int,fixedAmount:Float, rate:Float, hoursWorked:Float, name:String, age:Int, type:String) {
        self.fixedAmount=fixedAmount
        super.init(id: id, rate:rate,hoursWorked:hoursWorked,name:name,age:age, type: type)
    }
    
    init(fixedAmount:Float, rate:Float, hoursWorked:Float, name:String, age:Int, type:String) {
        let id = sinObj.empDict.count+1
        self.fixedAmount=fixedAmount
        super.init(id: id, rate:rate,hoursWorked:hoursWorked,name:name,age:age, type: type)
    }
    
    override func calcEarnings() -> Float {
        let finalSalary = hoursWorked * rate + fixedAmount
        return finalSalary
    }
    
    override func printMyData() {
        super.printMyData()
        
        print("Fixed Amount : \(fixedAmount)")
        print("Total Salary : \(calcEarnings().salaryFormat())")
    }
    
}
