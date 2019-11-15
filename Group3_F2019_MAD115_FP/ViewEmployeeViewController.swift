//
//  ViewEmployeeViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewEmployeeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var sinObj = Singleton.getInstance()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        custTable.dataSource = self
        custTable.delegate = self
        sinObj.alreadyCustomer()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sinObj.returnCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = sinObj.returnCustObj(custId: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "custCell", for: indexPath)
        cell.textLabel?.text = c?.fullName
        return cell
    }

    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//
//
//
//            let vc = UIStoryboard(name: "Main", bundle: nil)
//
//            let BillViewController = vc.instantiateViewController(withIdentifier: "BillViewController") as! BillViewController
//            BillViewController.c = sinObj.returnCustObj(custId: indexPath.row+1)
//        self.navigationController?.pushViewController(BillViewController, animated: true)
//
//    }
  

}
