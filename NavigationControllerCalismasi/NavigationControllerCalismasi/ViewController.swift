//
//  ViewController.swift
//  NavigationControllerCalismasi
//
//  Created by Nevin Özkan on 4.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.navigationItem.title = "Başlık Kod ile"
        self.navigationItem.prompt = "Açıklama Kod ile"
        
        self.navigationItem.largeTitleDisplayMode = .automatic
        
    }


}

