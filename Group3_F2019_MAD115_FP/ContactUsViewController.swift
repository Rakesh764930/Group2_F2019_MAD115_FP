//
//  ContactUsViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import MessageUI
class ContactUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnContactUs(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Contact Us",
                                              message: "If you need help you can email us at \n help@Group3MADT.com \n +14379233497",
                    preferredStyle: UIAlertController.Style.alert)
                
                let okAction = UIAlertAction(title: "Cancel",
                                             style: .cancel, handler: nil)
                
                alert.addAction(okAction)
                
                let callAction = UIAlertAction(title: "Call Us",
                                                   style: .default, handler: {
                                                    _ in
                                                    self.makeCall()
                    })
                    alert.addAction(callAction)
                    
                    
                }
                
                private func makeCall()
                {
                    if let url = URL(string: "tel://+14379233497)"), UIApplication.shared.canOpenURL(url){
                        if #available(iOS 10, *)
                        {
                            UIApplication.shared.open(url)
                        }
                        else
                        {
                            UIApplication.shared.openURL(url)
                        }
                    }
                }
                    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

