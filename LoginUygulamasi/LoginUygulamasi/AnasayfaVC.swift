//
//  AnasayfaVC.swift
//  LoginUygulamasi
//
//  Created by Nevin Özkan on 5.05.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka
    }

    @IBAction func cikisYap(_ sender: Any) {
        
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject (forKey: "sifre")
        
        exit (-1)
    }
}
