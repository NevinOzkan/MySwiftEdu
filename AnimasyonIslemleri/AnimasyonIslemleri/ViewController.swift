//
//  ViewController.swift
//  AnimasyonIslemleri
//
//  Created by Nevin Özkan on 10.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resim: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var yazi: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        
        //alphaAnimasyon()
        //scaleAnimasyon()
        //rotateAnimasyon()
        //translationAnimasyon()
        //gecikmeAnimasyon()
        //ivmeAnimasyon()
        //tekrarAnimasyon()
        //cokluAnimasyon()
        ardisikAnimasyon()
    }
    
    func alphaAnimasyon() {
        
        self.resim.alpha = 1
        
        UIView.animate(withDuration: 5, animations: {
            
            self.resim.alpha = 0
            
        },completion: nil)
        
    }
    
    func scaleAnimasyon () {
        
        UIView.animate(withDuration: 1, animations: {
            
            self.resim.transform = CGAffineTransform(scaleX: 2, y: 1)
            
        },completion: nil)
    }
    
    func rotateAnimasyon () {
        
        UIView.animate(withDuration: 1, animations: {
            
            self.yazi.transform = CGAffineTransform(rotationAngle: 90 * .pi/180)
            
        },completion: nil)
        
    }
    
    func translationAnimasyon() {
        
        UIView.animate(withDuration: 1, animations: {
            
            self.yazi.transform = CGAffineTransform(translationX: 50, y: 0)
            
        },completion: nil)
        
    }
    
    func gecikmeAnimasyon() {
        
        UIView.animate(withDuration: 2, delay: 1, animations: {
            
            self.yazi.transform = CGAffineTransform(translationX: 0, y: 100)
            
        },completion: nil)
    }
    
    func ivmeAnimasyon() {
        
        UIView.animate(withDuration: 2,
                       delay: 0
                       , options: [.curveEaseOut]
                       , animations: {
            
            self.yazi.transform = CGAffineTransform(translationX: 0, y: 100)
            
        },completion: nil)
        
        
    }
    
    func tekrarAnimasyon() {
        UIView.animate(withDuration: 1,
                       delay: 0
                       ,options: [.repeat, .autoreverse]
                       , animations: {
            
            self.resim.transform = CGAffineTransform(translationX: 0, y: 50)
            
        },completion: nil)
    }
    
    func cokluAnimasyon() {
        
        UIView.animate (withDuration: 1, animations: {
            
            let hareket = CGAffineTransform(translationX: 0, y: 100)
            let kucul = CGAffineTransform(scaleX: 0.5, y: 0.5)
            let don = CGAffineTransform(rotationAngle: 90 * .pi/180)
            
            let x = hareket.concatenating (kucul)
            
            self.yazi.transform = don.concatenating(x)
            
            self.yazi.alpha = 0
            
    },completion: nil)
    
}
    
    func ardisikAnimasyon(){
        
        UIView.animate(withDuration: 1, animations: {
            
            self.resim.alpha = 0
            
        },completion: { (true) in
            
        UIView.animate(withDuration: 1, animations: {
            
            self.resim.alpha = 0
            
        },completion: { (true) in
            
            UIView.animate (withDuration: 1, animations: {
                
                self.button.alpha = 0
                
            },completion: { (true) in
                
                UIView.animate(withDuration: 1, animations: {
                    
                    self.resim.alpha = 1
                    self.yazi.alpha = 1
                    self.button.alpha = 1
                    
                
            }, completion: nil)
        })
            
           
        })
    })

        }
                       }
