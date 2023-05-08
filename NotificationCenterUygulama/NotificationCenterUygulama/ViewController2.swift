//
//  ViewController2.swift
//  NotificationCenterUygulama
//
//  Created by Nevin Özkan on 6.05.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func gonder(_ sender: Any) {
        
        let kisi = Kisiler(kisi_ad: "Ahmet", kisi_yas: 18)
        
        NotificationCenter.default.post (name: .bildirimAdi, object: nil, userInfo: ["mesaj":"merhaba", "tarih" :Date (), "nesne" :kisi])
        
        dismiss(animated: true, completion: nil)
        
    }
}
