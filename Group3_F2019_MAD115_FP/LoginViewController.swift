//
//  LoginViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-12.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swRemember: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        swRemember.isOn=false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        if readeLoginPlist()
                    {
                        if self.swRemember.isOn{
                            
                            UserDefaults.standard.set(txtUserName.text, forKey: "email")
                            UserDefaults.standard.set(txtPassword.text, forKey: "pass")
                        }else{
                             
                            UserDefaults.standard.removeObject(forKey: "userName")
                            UserDefaults.standard.removeObject(forKey: "userPassword")
                            }
                     
                          
        
        
    
    }
    


