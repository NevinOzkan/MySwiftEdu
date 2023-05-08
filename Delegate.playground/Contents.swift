import UIKit

protocol YemekPisirme {
 func yemekYemek()
}

struct Anne: YemekPisirme {
  func yemekYemek() {
     print("Pizza geliyor!!")
   }
}

var anne = Anne()//Anne yapısını taşıyan anne değişkenini oluşturduk
anne.yemekYemek()


struct Bebek {
 var delegate: YemekPisirme? // delegate = özel yetenekleri olan birisi
}

// Bebek nesnesi oluşturma
var babe = Bebek()
babe.delegate = anne

babe.delegate?.yemekYemek() // "Pizza Geliyor!!"
