//
//  ViewControllerB.swift
//  SayfalarArasıGecis
//
//  Created by Nevin Özkan on 3.05.2023.
//

import UIKit

class ViewControllerB: UIViewController {
    
    @IBOutlet weak var etiket: UILabel!
    
    var mesaj:String?
    var kisi = Kisiler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Kisi id: \(kisi.kisiId!) Kisi ad : \(kisi.kisiAd!)")
        
        etiket.text = mesaj!
        
    }

}
