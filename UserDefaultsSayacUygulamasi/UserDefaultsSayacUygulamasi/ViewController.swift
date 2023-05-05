//
//  ViewController.swift
//  UserDefaultsSayacUygulamasi
//
//  Created by Nevin Özkan on 5.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let d = UserDefaults.standard
        
        var sayac = d.integer(forKey: "sayac")
        
        sayac = sayac + 1
        
        d.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Sayaç : \(sayac)"
        
    }


}

