//
//  ViewController.swift
//  SayfalarArasıGecis
//
//  Created by Nevin Özkan on 3.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func gonder(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as!
        ViewControllerB
        
        let gonderilecekMesaj = girdiAlani.text
        
        gidilecekViewController.mesaj = gonderilecekMesaj!
        
        let gidecekKisi = Kisiler(kisiId: 222, kisiAd: "Ahmet")
        
        gidilecekViewController.kisi = gidecekKisi
        
        //self.present(gidilecekViewController,animated: true, completion: nil)
        //Modal geçiş
        
        self.navigationController?.pushViewController(gidilecekViewController,
        animated: true)
        
        
    }
}

