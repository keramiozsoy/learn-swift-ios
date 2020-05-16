//
//  ViewController.swift
//  learn-swift-ios
//
//  Created by Mac on 20.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textFieldOutlet: UITextField!

    
    @IBOutlet weak var labelOutlet: UILabel!
    
        @IBOutlet weak var buttonOutlet: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buttonOutlet .backgroundColor = UIColor .red

        labelOutlet.textColor = UIColor .green

        // sayfa acildiginda otomatik olarak secili
        textFieldOutlet.becomeFirstResponder()

        // password girişi gorunumu saglar
        //textFieldOutlet.isSecureTextEntry = true

        // farklı klavye görünümleri
        //textFieldOutlet.keyboardType = UIKeyboardType .numberPad
        
        //textFieldOutlet.keyboardType = UIKeyboardType.emailAddress

    }
    
    @IBAction func textFieldAction_EditingDidBegin(_ sender: Any) {

        print(" Log - yazmaya basladi ")
     }

    @IBAction func textFieldAction_EditingDidEnd(_ sender: Any) {

        print(" Log - yazidan cikildi bitti ")
     }
    
    @IBAction func textFieldAction_EditingChanged(_ sender: Any) {

        print(" Log - yazi degisiyor ")

        // yazi degistikce label de gösteriliyor

        let degisenYazi:String = textFieldOutlet.text!

        labelOutlet.text = degisenYazi

     }
    
    @IBAction func buttonAction_TouchUpInside(_ sender: Any) {
        // focus yapılmış bir textfield
        // dışına tıklanarak unfocus
        // yapmak için tüm sayfayı bir buton
        // ile kaplıyoruz ki
        // kullanıcı boş bir yere basarak
        // klavyeyi de kapatabilsin


        
        // buttonType = custom seçilir
        
        // buton tüm sayfayı kaplayacak şekilde
        // genişletilir

        // view controller scene den içinde
        // bulunduğu view in en alt katmanında
        // olması için en yukarı taşınır.

        // uygulama baslarken rengi kirmizi


        print(" Log - Geri tusuna basildi ")

        textFieldOutlet.resignFirstResponder()

    }
}

