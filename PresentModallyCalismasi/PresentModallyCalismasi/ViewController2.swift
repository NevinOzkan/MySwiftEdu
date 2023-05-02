//
//  ViewController2.swift
//  PresentModallyCalismasi
//
//  Created by Nevin Özkan on 2.05.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func tiklanDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func goto3(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as!
        ViewController3
        
        self.present(gidilecekViewController,animated: true, completion: nil)
        
    }
}
