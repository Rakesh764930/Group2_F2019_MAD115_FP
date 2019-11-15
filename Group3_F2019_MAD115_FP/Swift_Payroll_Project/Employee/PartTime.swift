//
//  PartTime.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class PartTime:Employee
{
    
    var rate : Float
     var hoursWorked : Float
   
   
    
    
    init(id:Int,rate:Float,hoursWorked:Float,name:String,age:Int,type:String)
        
    {
        
        self.rate=rate
        self.hoursWorked=hoursWorked
        super.init(id: id, name: name, age: age, type: type)
        
    }
    override func printMyData()
    {
        super.printMyData()
       // print("Employee is Part Time / Commissioned")
        print("========================")
        print("Salary Information     \n========================")
        print("Rate  :\(rate) ")
        print("Hours Worked  : \(hoursWorked)")
    }
    
  
    
}
