//
//  Car.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Car: Vehicle{
     var brand:String
     var numberOfSeats:Int
    
    init(brand:String,numberOfSeats:Int,make:Int,plate:String,type:String)
    {
        
        self.brand=brand
        self.numberOfSeats=numberOfSeats
        super.init(make:make,plate:plate, type: type)
    }
    
//    override func printMyData() {
//        print("==========================")
//        print("Employee has a \(type) \n========================")
//        super.printMyData()
//        print("Brand     : \(brand)")
//        print("Number of seats     :  \(numberOfSeats)")
//    }
}
