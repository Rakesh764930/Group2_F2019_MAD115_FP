//
//  FullTIme.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class FullTime:Employee{
    private var salary: Float
    private var bonus:Float
    var sinObj=Singleton.getInstance()
    init(name: String, age: Int,bonus:Float,salary: Float,type:String) {
        self.bonus=bonus
        self.salary=salary
        var id = sinObj.empDict.count+1
        super.init(id: id, name:name,age:age, type: type)
    }
    override func printMyData() {
        super.printMyData()
        print("========================")
        print("Salary Information     \n========================")
        print("Base Salary : \(salary.salaryFormat())")
        print("Bonus : \(bonus.salaryFormat())")
        print("Total Salary : \((salary+bonus).salaryFormat())\n")    }
}
