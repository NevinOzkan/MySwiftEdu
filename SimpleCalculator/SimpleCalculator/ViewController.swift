//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Nevin Özkan on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstText: UITextField!
    
    
    
    @IBOutlet weak var secondText: UITextField!
    
    
    @IBOutlet weak var resaultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                let resault = firstNumber + secondNumber
                resaultLabel.text = String(resault)
            }
            
        }
        
        
       
    }
    
        @IBAction func minusClicked(_ sender: Any) {
            
            if let firstNumber = Int(firstText.text!) {
                if let secondNumber = Int(secondText.text!) {
                    
                    let resault = firstNumber - secondNumber
                    resaultLabel.text = String(resault)
                }
                
            }
        }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                let resault = firstNumber * secondNumber
                resaultLabel.text = String(resault)
            }
            
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                let resault = firstNumber / secondNumber
                resaultLabel.text = String(resault)
            }
            
        }
    }
    
}

