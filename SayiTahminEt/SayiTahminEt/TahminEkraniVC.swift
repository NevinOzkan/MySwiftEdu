//
//  TahminEkraniVC.swift
//  SayiTahminEt
//
//  Created by Nevin Özkan on 4.05.2023.
//

import UIKit

class TahminEkraniVC: UIViewController {
    
    @IBOutlet weak var labelKalanHak: UILabel!
    @IBOutlet weak var labelYardim: UILabel!
    @IBOutlet weak var textfieldGirdi: UITextField!
    
    var rasgeleSayi: Int?
    var kalanHak = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rasgeleSayi = Int.random(in: 0...100)//0 - 100
        print("Rasgele Sayi: \(rasgeleSayi!)")
        }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        
        if let gelenVeri = sender as? Bool {
            
            let gidilecekVC = segue.destination as! SonucEkraniVC
            
            gidilecekVC.sonuc = gelenVeri
        }
    }
    
    @IBAction func tahminet(_ sender: Any) {
        labelYardim.isHidden = false
        kalanHak-=1
        
        if let veri = textfieldGirdi.text {
            
            if let tahmin = Int(veri) {
                if kalanHak != 0 {
                    
                    if tahmin == rasgeleSayi {
                        let sonuc = true
                        performSegue(withIdentifier: "tahminTosonuc", sender:sonuc)
                        
                    }
                    
                    if tahmin > rasgeleSayi! {
                        labelYardim.text = "Azalt"
                        labelKalanHak.text = "Kalan Hak : \(kalanHak)"
                    }
                    
                    if tahmin < rasgeleSayi! {
                        labelYardim.text = "Arttir"
                        labelKalanHak.text = "Kalan Hak : \(kalanHak)"
                    }
                    
                }else{
                let sonuc = false
                performSegue(withIdentifier: "tahminTosonuc", sender:sonuc)
                }
                
                textfieldGirdi.text = ""
            }
            
        }
        
    }
}
