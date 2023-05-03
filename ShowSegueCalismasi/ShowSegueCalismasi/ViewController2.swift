//
//  ViewController2.swift
//  ShowSegueCalismasi
//
//  Created by Nevin Özkan on 2.05.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
    }
    

    @IBAction func geri(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func goto3(_ sender: Any) {
        
       /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController =
        storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
        
        navigationController?.pushViewController(gidilecekViewController,
        animated: true)*/
    }
    
    
}
