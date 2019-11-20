//
//  Singleton.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class Singleton: NSObject {
    var empDict = [Int:Employee]()
    
    //private init
    private override init() {
        
    }
    
    //created object of singleton
    private static var sobj = Singleton()
    
    //return singleton obj usin function
    internal static func getInstance() -> Singleton {
        
        return sobj
        
    }
    
    //function to add customer in dictionary
    func addEmployeeToDictionary(e: Employee) {
        empDict.updateValue(e, forKey: e.empId)
    }
    
    //funtion to create customer objects and add using above function
    func alreadyEmployee() {
        // Employee 1
       
        let f1 = FullTime(id:1, name: "Ajeet Singh", age: 22, bonus: 250, salary: 25000,type: "FullTime")
        let c1 = Car(brand: "Ferrari", numberOfSeats: 2, make: 2019, plate: "LVE142",type: "Car")
        f1.addVehicle(v: c1)
        let m1 = Motorcycle(model: "Ducati", type: "Motorcycle", plate: "LFM421", make: 2019)
        f1.addVehicle(v: m1)
      
        // Customer 2
       
        let p1 = FixedBasedPartTime(id:2, fixedAmount: 500, rate: 10, hoursWorked: 40, name: "Rakesh Kumar", age: 22, type: "Fixed Based PartTime")
        let c2 = Car(brand: "Ferrari", numberOfSeats: 2, make: 2019, plate: "LVE142",type: "Car")
        p1.addVehicle(v: c2)
        
        addEmployeeToDictionary(e: f1)
        addEmployeeToDictionary(e: p1)
    }
    
    //funtion to add customer
//    func addEmployeeFullTime(firstname:String, lastname:String, age:Int, type: String)
//    {
//        let cId = empDict.count+1
////      
//        let empType = type
//        if empType.elementsEqual("FullTime"){}
//        addEmployeeToDictionary(e: e)
//        
//    }
    
    func returnCount() -> Int {
        return empDict.count
    }
    
    //Return Customer Object
    func returnEmpObj(empId:Int)->Employee?
    {
        for(key,value) in empDict
        {
            if key==empId
            {
                return value
            }
        }
        return nil
    }
    
}
