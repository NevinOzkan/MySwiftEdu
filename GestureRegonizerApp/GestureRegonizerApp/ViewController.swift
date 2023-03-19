//
//  ViewController.swift
//  GestureRegonizerApp
//
//  Created by Nevin Özkan on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    
    }
    
    @objc func changePic() {
        var isJames = true
        
        if isJames == true {
            imageView.image = UIImage(named: "Lars")
            myLabel.text = "Lars Ulrich"
            isJames = false
        }else {
            
            imageView.image = UIImage(named: "James")
            myLabel.text = "James Hetfield"
            isJames = true
      
            
        }
       
        
    }


}

