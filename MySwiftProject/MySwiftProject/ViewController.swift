//
//  ViewController.swift
//  MySwiftProject
//
//  Created by Nevin Özkan on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dedüblümanLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeClicked(_ sender: Any) {
        imageView.image = UIImage(named: "Dedüblüman2")
    }
}

