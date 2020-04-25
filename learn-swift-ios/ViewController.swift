//
//  ViewController.swift
//  learn-swift-ios
//
//  Created by Mac on 20.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBAction func buttonAction_TouchUpInside(_ sender: Any) {
        labelOutlet.text = "changed"
        
        print("""
        Changed Log

        Changed Log

        Changed Log
        """)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelOutlet.text = "label view didload"
        
        print(" Log ")
        
    }


}

