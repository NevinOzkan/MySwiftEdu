//
//  ViewController.swift
//  BackgroundModesSes
//
//  Created by Nevin Özkan on 6.05.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var sesOynatici : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mр3")
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
        }catch{
            print(error.localizedDescription)
        }
        
    }


    @IBAction func basla(_ sender: Any) {
        sesOynatici.play ()
    }
    
    @IBAction func dur(_ sender: Any) {
        sesOynatici.stop ()
    }
}

