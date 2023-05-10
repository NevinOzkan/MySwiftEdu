//
//  ViewController.swift
//  DelegateKullanimi
//
//  Created by Nevin Özkan on 9.05.2023.
//

import UIKit

class ViewController: UIViewController, UIButtonDelegate {
    @IBOutlet weak var myButton;.UIButton>
    override func viewDidLoad() {
        super.viewDidLoad()
       
        myButton.delegate = self
    }
    
    func buttonTapped(){
        print("Buttona tıklanıldı")
    }


}

