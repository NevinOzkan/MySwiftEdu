//
//  KisiKayitVC.swift
//  KisilerUygulamasi
//
//  Created by Nevin Özkan on 8.05.2023.
//

import UIKit

class KisiKayitVC: UIViewController {
    
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text,let kt = tfKisiTel.text {
            kayit(kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    func kayit(kisi_ad:String,kisi_tel:String) {
        print("Kişi kayıt : \(kisi_ad) - \(kisi_tel)")
    }
    
}
