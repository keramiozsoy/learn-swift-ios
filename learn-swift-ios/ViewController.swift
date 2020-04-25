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
    @IBOutlet weak var button2Outlet: UIButton!
    @IBOutlet weak var button3Outlet: UIButton!
    
    @IBAction func buttonAction_TouchUpInside(_ sender: Any) {
        labelOutlet.text = "changed"
        
        print("""
        Changed Log

        Changed Log

        Changed Log
        """)
    }
    
    
    @IBAction func button2Action_TouchUpInside(_ sender: Any) {
        
        
        // Butonu gizler
        // button2Outlet.isHidden = true
        
        // Butonu %50 oraninda gorunurlugunu degistirri
        // button2Outlet.alpha = 0.5
        
        button2Outlet.backgroundColor = UIColor.blue;
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelOutlet.text = "label view didload"
        
        
        button2Outlet.setTitle("renk degistir", for: UIControl.State.normal)
        // button2Outlet.setTitle("renk degistir", for: .normal)
        
        button3Outlet.setTitle("yer degistir", for: UIControl.State.normal)
        
        print(" Log ")
        
        
        
    }

    
    
    
    @IBAction func button3Action_TouchUpInside(_ sender: Any) {
        
        // butonun yerini degistir
        
        button3Outlet.center = CGPoint(x: 150,y: 650)
        
        
        // butonun boyunu degistir
        
        button3Outlet.bounds = CGRect.init(x: 150, y: 650, width: 80, height: 80)
        
    }
}

