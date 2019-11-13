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

                                 let stbHome=UIStoryboard(name: "Main", bundle: nil)
                                 let HomeVC = stbHome.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
                                        navigationController?.pushViewController(HomeVC, animated: true)
                         }
                             else{
                                                      let alert = UIAlertController(title: "Invalid Username Or Password", message: "Please Enter Valid username or password", preferredStyle: .alert)

                                                      alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                                                      alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
                                                      
                                                      self.present(alert, animated: true)
                                                  }
                                          }
                                          
                                               
                             
        
    
    }
    


