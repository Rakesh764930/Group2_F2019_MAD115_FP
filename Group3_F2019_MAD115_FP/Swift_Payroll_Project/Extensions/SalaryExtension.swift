//
//  SalaryExtension.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-23.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Float{
    func salaryFormat() ->String
    {

        return String(format: "$%0.2f", Float(self))
    }
}
