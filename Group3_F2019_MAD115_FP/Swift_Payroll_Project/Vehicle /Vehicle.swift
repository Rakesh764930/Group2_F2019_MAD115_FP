//
//  Vehicle.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Vehicle: IDisplay
{
    var make:Int
    var plate:String
    var type:String

    
    init(make:Int,plate:String,type:String)
    {
        self.type=type
        self.make=make
        self.plate=plate
    
    }
    

    func printMyData()
    {
        
        print("Make  \(make)")
        print("Plate  \(plate)")
        
    }
}
