//
//  ViewController.swift
//  IOSYasamDongusu
//
//  Created by Nevin Özkan on 4.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad çalıştı")
       }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppearçalıştı")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear çalıştı")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear çalıştı")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear çalıştı")
    }


}

