//
//  AboutUsViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import WebKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var aboutWK: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

            //self.loadFromURL()        // Do any additional setup after loading the view.
        }
        func loadFromURL(){
                    let url = URL(string: "https://www.lambtoncollege.ca/About_Us/Our_College/President/A_Message_from_President_Judith_Morris/")
                    let urlReq = URLRequest(url: url!)
                    aboutWK.load(urlReq)
        }
}
