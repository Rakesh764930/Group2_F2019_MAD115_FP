//
//  Motorcycle.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Motorcycle : Vehicle{
   private var model:String
   private var type:String
    
    init(model:String,type:String,plate:String,make:Int)
    {
        self.model=model
        self.type=type
        super.init(make:make, plate:plate)
    }

    
   override func printMyData() {
    print("=========================")
    print("Employee has a \(type) \n========================")
    super.printMyData()
    print("Model     :\(model)")
    print("type    :\(type)")
    }
    
    
    
    
}
