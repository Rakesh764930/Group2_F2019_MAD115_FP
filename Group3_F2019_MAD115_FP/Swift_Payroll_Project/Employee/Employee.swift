//
//  Employee.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Employee:IDisplay{
    var name:String
    var age:Int
    var vdict = Dictionary<String, Vehicle>()
    var type: String
    var empId: Int
    //var m1:Motorcycle?
   
    
    
    init(id:Int,name:String,age:Int,type:String) {
        
        
        self.name=name
        self.age=age
        self.type=type
        self.empId=id
    }
    
 //   init(name:String,age:Int, m:Motorcycle) {
//        self.name=name
 //       self.age=age
   //     self.m1=m
//    }
    
    func addVehicle(v:Vehicle) {
        vdict.updateValue(v, forKey: v.plate)
        
    }
    


func calcBirthYear() -> Int{
    //Getting Date
    let date = Date()
    //getting year
    let calender = Calendar.current
    let currYear = calender.component(.year, from: date)
    //returning result
    return currYear - age
}
    func calcEarnings() -> Float{
        return 1000.00;
    }
    
func printMyData() {
        print("****************************************************************")
        print("\nName   : \(name)")
        print("Age    : \(age.ageFormat())")
        print("Birth Year : \(calcBirthYear())")
    
    
    if vdict.count != 0{
        for i in vdict.values{
            i.printMyData()
        }
        }
    else{
        print("====================")
        print("Employee has no vehicle")
    }
    print("Employee is a \(type)")
    }
}
