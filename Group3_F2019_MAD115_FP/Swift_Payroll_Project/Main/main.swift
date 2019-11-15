//
//  main.swift
//  Swift_Payroll_Project
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

//print("Hello, World!")

// FullTime Employee
do {
    let f1 = try FullTIme(name: "Ajeet", age: 22, bonus: 250, salary: 25000,type: "FullTime")
    let c1 = Car(brand: "Ferrari", numberOfSeats: 2, make: 2019, plate: "LVE142",type: "Car")
    f1.addVehicle(v: c1)
    let m1 = Motorcycle(model: "Ducati", type: "Motorcycle", plate: "LFM421", make: 2019)
    f1.addVehicle(v: m1)
    f1.printMyData()
}catch EmployeeError.InvalidData {
    print("InvalidAge :(")
}catch {
    print(error.localizedDescription)
}


//PartTime - Fixed Based
do {
    let p1 = try FixedBasedPartTime(fixedAmount: 500, rate: 10, hoursWorked: 40, name: "Rakesh", age: 22, type: "Fixed Based PartTime")
    let c2 = Car(brand: "Ferrari", numberOfSeats: 2, make: 2019, plate: "LVE142",type: "Car")
    p1.addVehicle(v: c2)
    p1.printMyData()
}catch EmployeeError.InvalidData {
    print("InvalidAge :(")
}catch {
    print(error.localizedDescription)
}

do {
    let c1 = try CommissionBasedPartTime(rate: 10, hoursWorked: 5, commissionPerc: 10, name: "Bushair", age: 22, type: "Commission Based")
    let m2 = Motorcycle(model: "Harley", type: "Motorcycle", plate: "LDB421", make: 2019)
    print("\n")
    c1.addVehicle(v: m2)
    c1.printMyData()
}
catch EmployeeError.InvalidData {
    print("InvalidAge :(")
}catch {
    print(error.localizedDescription)
}
do {
    let i1 = try Intern(name: "Ritik", age: 22, schoolName: "Lambton College", type: "Intern")
i1.printMyData()
}
    catch EmployeeError.InvalidData {
        print("InvalidAge :(")
    }catch {
        print(error.localizedDescription)
    }
print("End")

//func readJsonFile(jsonFileName: String)
//{
//    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
//
//    guard let jsonData = url else{
//        return
//    }
//
//    guard let data = try? Data(contentsOf: jsonData) else {
//        return
//    }
//
//    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
//        return
//    }
//
//   // print(json)
//
//    var employeeList = [String: Employee]()
//    if let jsonArray = json as? [Any]{
//        var employee: Employee!
//        for empObject in jsonArray{
//            if let jsonDictionary = empObject as? [String: Any]{
//               if let type = jsonDictionary["type"] as? String
//                {
//                    employee.type = type
//                   if employee.type == "FullTime"{
//                    let name = (jsonDictionary["name"]) as? String
//                    let age = (jsonDictionary["age"]) as? Int
//                    let salary = (jsonDictionary["salary"]) as? Float
//                    let bonus = (jsonDictionary["bonus"]) as? Float
//
//                    var fullTime = FullTIme(name: name!, age: age!, bonus: bonus!, salary: salary!, type: type)
//                    var vehicle: Vehicle
//                    if let vehDict = jsonDictionary["vehicle"] as? Dictionary<String, Any>
//                    {
//                        let vtype = vehDict["type"] as? String
//                        if vtype == "Car"{
//
//                        }
//                    }
//
//                    }
//               }
////                print(jsonDictionary)
//
//            }
//        }
//    }
//
//
//}
// readJsonFile(jsonFileName: "Users")
