//
//  Intern.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Intern:Employee {
     var schoolName:String
    var sinObj=Singleton.getInstance()
    
    init(id:Int,name:String,age:Int,schoolName:String,type:String) {
        self.schoolName=schoolName
        super.init(id: id, name:name,age:age,type:type)
    
    }
    
    init(name:String,age:Int,schoolName:String,type:String) {
        self.schoolName=schoolName
        let id=sinObj.empDict.count+1
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
