//
//  ViewController3.swift
//  PresentModallyCalismasi
//
//  Created by Nevin Özkan on 2.05.2023.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goto1(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa1") as!
        ViewController
        
        self.present(gidilecekViewController,animated: true, completion: nil)
    }
    
    
    
    @IBAction func goto2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as!
        ViewController2
        
        self.present(gidilecekViewController,animated: true, completion: nil)
    }
    
}
