//
//  ViewController.swift
//  ButtonLabelTextfield
//
//  Created by Nevin Özkan on 4.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tikla(_ sender: Any) {
        
        if let alinanVeri = textField.text {
            if let sayi = Int(alinanVeri) {
                
                let islem = sayi * 2
                
                etiket.text = String(islem)
        }
        }
    }
    
}

