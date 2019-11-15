//
//  Intern.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Intern:Employee {
    private var schoolName:String
    
    init(id:Int,name:String,age:Int,schoolName:String,type:String) throws {
        self.schoolName=schoolName
        super.init(id: id, name:name,age:age,type:type)
    
    }
    override func printMyData() {
        super.printMyData()
        print("School name : \(schoolName)")
        print("========================")
        print("Salary Information     \n========================")
        
        print("Salary : \(calcEarnings().salaryFormat())")
    }
}
